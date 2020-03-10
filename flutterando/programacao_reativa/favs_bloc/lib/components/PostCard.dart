import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:favs_bloc/bloc/FavoriteBloc.dart';
import 'package:favs_bloc/bloc/FavoriteCardBloc.dart';
import 'package:favs_bloc/model/Post.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final Post post;
  PostCard(this.post);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  FavoriteCardBloc _favoriteCardBloc;
  FavoriteBloc _favoriteBloc;

  StreamSubscription _streamSubscription;

  @override
  void initState() {
    _favoriteCardBloc = FavoriteCardBloc(widget.post);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      //_favoriteBloc = BlocProvider.of<FavoriteBloc>(context);

      _favoriteBloc.favoriteListFlux
          .listen(_favoriteCardBloc.favoriteListEvent.add);
    });
    super.initState();
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    _favoriteCardBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Text(
              "Titulo: ${widget.post.id} ${widget.post.title}",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
          ),
          Container(
            width: double.infinity,
            child: Text("Post: ${widget.post.body}"),
          ),
          StreamBuilder(
            stream: _favoriteCardBloc.isFavoriteFlux,
            initialData: false,
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              return snapshot.data
                  ? IconButton(
                icon: Icon(Icons.favorite, color: Colors.red,), onPressed: () {},
              ) :
                  IconButton(
                    icon: Icon(Icons.favorite_border, color: Colors.grey,), onPressed: () {},
                  );
            },

          )
        ],
      ),
    );;
  }
}
