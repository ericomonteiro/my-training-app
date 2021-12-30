import 'package:json_annotation/json_annotation.dart';

part 'LoginDto.g.dart';

@JsonSerializable()
class LoginDto {
  final String username;
  final String password;

  LoginDto(this.username, this.password);

  factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDtoToJson(this);
}