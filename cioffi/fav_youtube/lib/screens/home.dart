import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:fav_youtube/blocs/videos_bloc.dart';
import 'package:fav_youtube/delegates/data_search.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/youtube-logo-light.png", height: 50,),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Text("0"),
          ),
          IconButton(
            icon: Icon(Icons.star), onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              String result = await showSearch(context: context, delegate: DataSearch(), );
              if(result != null) BlocProvider.of<VideosBloc>(context).inSearch.add(result);
            },
          )
        ],
      ),
      body: Text("dia"),
    );
  }
}