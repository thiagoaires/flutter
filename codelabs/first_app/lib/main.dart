import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('first app'),
        ),
        body: Center(
          child: RandomWords(),
          //child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
class RandomWords extends StatefulWidget{

  @override
  RandomWordsState createState() => RandomWordsState();

}

class RandomWordsState extends State<RandomWords>{

  final _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);

  Widget _buildSuggestions(){
    
  }

  @override
  Widget build(BuildContext context){
    final WordPair wordPair = WordPair.random();

    return Text(wordPair.asPascalCase);
  }
}
