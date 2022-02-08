import 'dart:convert';


AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));
String authModelToJson(AuthModel data) => jsonEncode(data.toJson());

class AuthModel {
  AuthModel({
      TokenData? data,

      int? code,}){
    _data = data;

    _code = code;
}

  AuthModel.fromJson(dynamic json) {
    _data = json['data'] != null ? TokenData.fromJson(json['data']) : null;


    _code = json['code'];
  }
  TokenData? _data;

  int? _code;

  TokenData? get data => _data;

  int? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }

    map['code'] = _code;
    return map;
  }

}


TokenData dataFromJson(String str) => TokenData.fromJson(json.decode(str));
String dataToJson(TokenData data) => jsonEncode(data.toJson());

class TokenData {
  TokenData({
      String? accessToken, 
      String? tokenType, 
      int? expiresIn,}){
    _accessToken = accessToken;
    _tokenType = tokenType;
    _expiresIn = expiresIn;
}

  TokenData.fromJson(dynamic json) {
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