import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _todoList = [];

  final _todoController = TextEditingController();

  Map<String, dynamic> _lastTodo = Map();
  int _lastTodoPos;

  @override
  void initState() {
    super.initState();
    
    _readData().then((data){
      setState(() {
        _todoList = json.decode(data);
      });
    });
  }


  void addTodo(){
    setState(() {
      Map<String, dynamic> newTodo = Map();
      newTodo["title"] =  _todoController.text;
      newTodo["ok"] = false;
      _todoController.text = "";
      _todoList.add(newTodo);

      _saveFile();
    });
  }

  Future<Null> _refresh() async{
    await Future.delayed(Duration(seconds: 1));

    setState(() {
      _todoList.sort((a, b) {
        if(a["ok"] && !b["ok"]){
          return 1;
        } else if(!a["ok"] && b["ok"]){
          return -1;
        } else{
          return 0;
        }
      });
    });

    _saveFile();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("#TODO por TODOS"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(16, 2, 8, 2),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _todoController,
                      decoration: InputDecoration(
                        labelText: "Nova tarefa",
                        labelStyle: TextStyle(
                          color: Colors.blueAccent
                        ),
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: addTodo,
                    textColor: Colors.white,
                    child: Text("Add"),
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: _refresh,
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 10),
                  itemCount: _todoList.length,
                  itemBuilder: buildItem,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildItem(context, index){
    return Dismissible(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      direction: DismissDirection.startToEnd,
      background: Container(
        color: Colors.red,
        child: Align(
          alignment: Alignment(-0.9, 0),
          child: Icon(Icons.delete, color: Colors.white,),
        ),
      ),
      onDismissed: (direction){
        setState(() {
          _lastTodoPos = index;
          _lastTodo = _todoList[index];
          _todoList.removeAt(index);

        });
        final snack = SnackBar(
            content: Text("Tarefa  removida"),
            action: SnackBarAction(
              label: "Desfazer",
              onPressed: (){
                  setState(() {
                    _todoList.insert(index, _lastTodo);
                  });
              }
            ),
            duration: Duration(seconds: 4),
          );
          Scaffold.of(context).removeCurrentSnackBar();
          Scaffold.of(context).showSnackBar(snack);
        _saveFile();
      },
      child: CheckboxListTile(
                  onChanged: (c){
                    setState(() {
                      _todoList[index]["ok"] = c;
                    });
                   _saveFile();
                  },
                  title: Text(_todoList[index]["title"]),
                  value: _todoList[index]["ok"],
                  secondary: CircleAvatar(
                    child: Icon(
                      _todoList[index]["ok"] ? 
                      Icons.check :
                      Icons.error
                    ),
                  ),
                )
    );
  }

  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/data.json");
  }

  Future<File> _saveFile() async {
    String data = json.encode(_todoList);
    final file = await _getFile();

    return file.writeAsString(data);
  }

  Future<String> _readData() async {
    try {
      final file = await _getFile(); 
      return file.readAsString();
    } catch (e) {
      return null;
    }
  }
}
