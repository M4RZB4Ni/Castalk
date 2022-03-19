class TokenModel {
  String? accessToken;
  String? tokenType;
  String? expiresIn;

  TokenModel({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'tokenType': tokenType,
      'expiresIn': expiresIn,
    };
  }

  TokenModel.fromJson(Map<String, dynamic> json)
      : accessToken = json['accessToken'],
        tokenType = json['tokenType'],
        expiresIn = json['expiresIn'];
}
