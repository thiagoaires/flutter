import "package:http/http.dart" as http;

const API_KEY = "AIzaSyB4GLZPFSKoPk8Kux2i9-EytN9wmKKCXNY";

class Api{

  search(String search) async{
    http.Response response = await http.get(
      "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$search&type=video&key=$API_KEY&maxResults=10"
      );
  }
}