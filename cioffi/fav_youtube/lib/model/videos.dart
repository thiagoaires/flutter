class Videos{
  final String id;
  final String title;
  final String thumb;
  final String channel;

  Videos({this.id, this.title, this.thumb, this.channel});

  factory Videos.fromJson(Map<String, dynamic> json){
    return Videos(
      id: json["id"]["videoId"],
      title: json["snippet"]["title"],
      thumb: json["snippet"]["thumbnails"]["default"]["url"],
      channel: json["snippet"]["channelTitle"]
      );
  }
    
}