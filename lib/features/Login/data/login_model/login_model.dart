import 'data.dart';

class LoginModel {
  String? token;
  Login_Data? data;

  LoginModel({this.token, this.data});

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        token: json['token'] as String?,
        data: json['data'] == null
            ? null
            : Login_Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'token': token,
        'data': data?.toJson(),
      };
}
