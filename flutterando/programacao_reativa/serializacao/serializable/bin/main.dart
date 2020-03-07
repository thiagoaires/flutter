import 'dart:convert';

import 'Person.dart';

main(List<String> args) {
  Map<String, dynamic> meuJson = {"id": "233", "name": "Badau"};

  var p = Person.fromJson(meuJson);

  print(p.name);
  print(p.id);

  var j = jsonEncode(p);
  print(j);
  var l = Person.fromJson(jsonDecode(j));
  
  print(l);
}