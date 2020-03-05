class SearchItem {
  final String fullName;
  final String name;
  final String url;
  final String avatarUrl;

  SearchItem({this.name,this.fullName, this.url, this.avatarUrl});

  factory SearchItem.fromJson(Map<String, dynamic> json) {
    return SearchItem(
        fullName: json["full_name"] as String,
        url: json["html_url"] as String,
        name: json["name"] as String,
        avatarUrl:
            (json["owner"] as Map<String, dynamic>)["avatar_url"] as String);
  }
}