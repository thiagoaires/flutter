import 'dart:convert';

import 'Person.dart';

main(List<String> args) {
  Map<String, dynamic> meuJson = {
    "id": "233",
    "name": "Badau",
    "addresses": [
      {"id": 1, "name": "COrsamal"},
      {"id": 2, "name": "dalton Trumbo"}
    ]
  };

  var p = Person.fromJson(meuJson);

  print(p.name);
  print(p.id);
  print(p.addresses[0].name);
  print(p.addresses[1].name);

  var j = jsonEncode(p);
  print(j);
  var l = Person.fromJson(jsonDecode(j));

  print(l);
}
