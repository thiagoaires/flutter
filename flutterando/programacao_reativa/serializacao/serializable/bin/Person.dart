import 'package:json_annotation/json_annotation.dart';

import 'Address.dart';

part 'Person.g.dart';

@JsonSerializable()
class Person {
  Person({this.id, this.name});

  String id;
  String name;
  List<Address> addresses;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
