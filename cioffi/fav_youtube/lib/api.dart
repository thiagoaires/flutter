import 'dart:convert';

import "package:http/http.dart" as http;
import 'model/videos.dart';

const API_KEY = "AIzaSyB4GLZPFSKoPk8Kux2i9-EytN9wmKKCXNY";

class Api{

  search(String search) async{

    print(search);
    http.Response response = await http.get(
      "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$search&type=video&key=$API_KEY&maxResults=10"
      );

      decode(response);
  }

  List<Videos> decode(http.Response response){

    if(response.statusCode == 200){
      var decoded = json.decode(response.body);
      
      List<Videos> videos = decoded["items"].map<Videos>((map){
        return Videos.fromJson(map);
      }).toList();

      print(videos);

      return videos;
    } else{
      throw Exception("Erro ao carregar videos, deu ruim");
    }
  }
}