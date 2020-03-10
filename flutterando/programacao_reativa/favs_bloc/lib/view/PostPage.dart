import 'package:favs_bloc/bloc/PostBloc.dart';
import 'package:favs_bloc/components/PostCard.dart';
import 'package:favs_bloc/model/Post.dart';
import 'package:favs_bloc/view/FavoritesPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  PostBloc _postBloc;

  @override
  void initState() {
    _postBloc = new PostBloc();
    super.initState();
  }

  @override
  void dispose() {
    _postBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pagina de posts"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: StreamBuilder(
            stream: _postBloc.postListFlux,
            builder:
                (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      Post post = snapshot.data[index];
                      return PostCard(post);
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => FavoritesPage()),
          ),
          child: Icon(Icons.add),
        ));
  }
}
