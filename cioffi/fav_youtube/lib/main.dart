import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:fav_youtube/api.dart';
import 'package:fav_youtube/blocs/videos_bloc.dart';
import 'package:fav_youtube/screens/home.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  Api api = Api();
  api.search("patati");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: VideosBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Fluttertube",
        home: Home(),
      ),
    );
  }
}
/*
"https://www.googleapis.com/youtube/v3/search?part=snippet&q=$search&type=video&key=$API_KEY&maxResults=10"
"https://www.googleapis.com/youtube/v3/search?part=snippet&q=$_search&type=video&key=$API_KEY&maxResults=10&pageToken=$_nextToken"
"http://suggestqueries.google.com/complete/search?hl=en&ds=yt&client=youtube&hjson=t&cp=1&q=$search&format=5&alt=json"
*/
