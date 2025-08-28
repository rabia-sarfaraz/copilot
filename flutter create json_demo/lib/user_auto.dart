import 'package:json_annotation/json_annotation.dart';

part 'user_auto.g.dart';

@JsonSerializable()
class UserAuto {
  final int id;
  final String name;
  final String email;

  UserAuto({required this.id, required this.name, required this.email});

  factory UserAuto.fromJson(Map<String, dynamic> json) =>
      _$UserAutoFromJson(json);

  Map<String, dynamic> toJson() => _$UserAutoToJson(this);

  @override
  String toString() => "UserAuto(id: $id, name: $name, email: $email)";
}
