import 'dart:convert';
/// data : {"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXV0aC5zZXJ2aWNlcy5jYXN0YWxrLmR5bmVlbWFkZXYuY29tXC9sb2dpbiIsImlhdCI6MTY0MzYyNDY3MywiZXhwIjoxNjQzNjI4MjczLCJuYmYiOjE2NDM2MjQ2NzMsImp0aSI6IjNyaGhGRW9aTlZEbjhGUDgiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.xqMZ7mNByrIZg-uIZfm17knyCSUP8dC8lsCuC7GkRuE","token_type":"bearer","expires_in":3600}
/// errors : []
/// messages : []
/// code : 201

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));
String authModelToJson(AuthModel data) => jsonEncode(data.toJson());

class AuthModel {
  AuthModel({
      Data? data, 
      List<dynamic>? errors, 
      List<dynamic>? messages, 
      int? code,}){
    _data = data;
    _errors = errors;
    _messages = messages;
    _code = code;
}

  AuthModel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;


    _code = json['code'];
  }
  Data? _data;
  List<dynamic>? _errors;
  List<dynamic>? _messages;
  int? _code;

  Data? get data => _data;
  List<dynamic>? get errors => _errors;
  List<dynamic>? get messages => _messages;
  int? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    if (_errors != null) {
      map['errors'] = _errors?.map((v) => v.toJson()).toList();
    }
    if (_messages != null) {
      map['messages'] = _messages?.map((v) => v.toJson()).toList();
    }
    map['code'] = _code;
    return map;
  }

}

/// access_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXV0aC5zZXJ2aWNlcy5jYXN0YWxrLmR5bmVlbWFkZXYuY29tXC9sb2dpbiIsImlhdCI6MTY0MzYyNDY3MywiZXhwIjoxNjQzNjI4MjczLCJuYmYiOjE2NDM2MjQ2NzMsImp0aSI6IjNyaGhGRW9aTlZEbjhGUDgiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.xqMZ7mNByrIZg-uIZfm17knyCSUP8dC8lsCuC7GkRuE"
/// token_type : "bearer"
/// expires_in : 3600

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => jsonEncode(data.toJson());

class Data {
  Data({
      String? accessToken, 
      String? tokenType, 
      int? expiresIn,}){
    _accessToken = accessToken;
    _tokenType = tokenType;
    _expiresIn = expiresIn;
}

  Data.fromJson(dynamic json) {
    _accessToken = json['access_token'];
    _tokenType = json['token_type'];
    _expiresIn = json['expires_in'];
  }
  String? _accessToken;
  String? _tokenType;
  int? _expiresIn;

  String? get accessToken => _accessToken;
  String? get tokenType => _tokenType;
  int? get expiresIn => _expiresIn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = _accessToken;
    map['token_type'] = _tokenType;
    map['expires_in'] = _expiresIn;
    return map;
  }

}