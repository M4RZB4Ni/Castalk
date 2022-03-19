class AuthModel {
  AuthModel({
    required this.data,
    required this.errors,
    required this.messages,
    required this.code,
  });
  late final Data data;
  late final List<dynamic> errors;
  late final List<dynamic> messages;
  late final int code;

  AuthModel.fromJson(Map<String, dynamic> json){
    data = Data.fromJson(json['data']);
    errors = List.castFrom<dynamic, dynamic>(json['errors']);
    messages = List.castFrom<dynamic, dynamic>(json['messages']);
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.toJson();
    _data['errors'] = errors;
    _data['messages'] = messages;
    _data['code'] = code;
    return _data;
  }

}

class Data {
  Data({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });
  late final String accessToken;
  late final String tokenType;
  late final int expiresIn;

  Data.fromJson(Map<String, dynamic> json){
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['access_token'] = accessToken;
    _data['token_type'] = tokenType;
    _data['expires_in'] = expiresIn;
    return _data;
  }
}