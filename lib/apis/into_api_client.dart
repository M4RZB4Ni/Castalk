import 'dart:convert';

import 'package:castalk/models/intro_model.dart';
import 'package:http/http.dart' as http;

class IntroApiClient{
  final _baseUrl = 'https://quote-garden.herokuapp.com';
  final http.Client httpClient=http.Client();

  IntroApiClient();

  Future<IntroModel> fetchIntros() async{

    final url='$_baseUrl+someUrl/some/';
    final response = await httpClient.get(Uri.parse(url));
    if(response.statusCode!=200){
      throw Exception('error getting Intro');
    }
    return IntroModel.fromJson(jsonDecode(response.body));

  }


}