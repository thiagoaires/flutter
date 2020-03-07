import 'package:json_annotation/json_annotation.dart';

part 'Person.g.dart';

@JsonSerializable()
class Person {
  Person({this.id, this.name});

  String id;
  String name;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  //factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
