import 'dart:convert';
import 'dart:async';

import 'package:buscador_gifs/ui/gif_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:share/share.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  String _search;
  int _offset = 0;

  Future<Map> _getGifs() async{
    http.Response response;

    if(_search == null || _search.isEmpty){
      response = await http.get("https://api.giphy.com/v1/gifs/trending?api_key=xeeaGzl9WpwVG3YQ1AvtuxUs3lmDAYFj&limit=19&rating=G");
    } else{
      response = await http.get("https://api.giphy.com/v1/gifs/search?api_key=xeeaGzl9WpwVG3YQ1AvtuxUs3lmDAYFj&q=$_search&limit=19&offset=$_offset&rating=G&lang=en");
    }

    return json.decode(response.body);
  }


  @override
  void initState() {
    
    _getGifs().then((map) => print(map));
  }
  


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Image.network("https://developers.giphy.com/static/img/dev-logo-lg.7404c00322a8.gif"),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18),
            child: TextField(
              onSubmitted: (text){
                print(text);
                setState(() {
                  _search = text;
                  _offset = 0;
                });
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: "Pesquise Aqui",
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: _getGifs(),
              builder: (context, snapshot){
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.waiting:
                    return Container(
                      width: 200,
                      height: 200,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        strokeWidth: 5,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    );
                  default:
                    if (snapshot.hasError) return Container();
                    else return _createGifTable(context, snapshot);
                }
              },
            ),
          )
        ],
      ),
    );


  }
  int _getCount(List _data){
    if(_search == null)
      return _data.length;
    else
      return _data.length + 1;
  }

  Widget _createGifTable(BuildContext context, AsyncSnapshot snapshot){
    return GridView.builder(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10, mainAxisSpacing: 10), 
      itemBuilder: (BuildContext context, int index) {
        if(_search == null || index < snapshot.data["data"].length){
          return GestureDetector(
            child: Image.network(
              snapshot.data["data"][index]["images"]["fixed_height"]["url"],
              height: 300,
              fit: BoxFit.cover,
              ),
              onLongPress: (){
                Share.share(snapshot.data["data"][index]["images"]["fixed_height"]["url"]);
              },
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => GifPage(snapshot.data["data"][index])));
              },
          );
        } else{
          return GestureDetector(
            onTap: (){
              setState(() {
                _offset += 19;
              });
            },
          );
        }
      },
      itemCount: _getCount(snapshot.data["data"]),
    );
  }
}