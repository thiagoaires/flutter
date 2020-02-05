
import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:fav_youtube/api.dart';
import 'package:fav_youtube/model/videos.dart';

class VideosBloc implements BlocBase{

  Api api;
  List<Videos> videos;

  StreamController<List<Videos>> _videosController = StreamController<List<Videos>>();
  Stream get outVideos => _videosController.stream;

  StreamController<String> _searchController = StreamController<String>();
  Sink get inSearch => _searchController.sink;

  VideosBloc(){
    api = Api();

    _searchController.stream.listen(_search);
  }

  void _search(String search) async{

    print(search);
    
    videos = await api.search(search);
    _videosController.sink.add(videos);
    print(videos);
  }

  @override
  void dispose() {
    _videosController.close();
    _searchController.close();
  }

}