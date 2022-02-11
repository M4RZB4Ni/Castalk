import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class Utils{
  BuildContext context;
  late double h;
  late double w;
  final storage = const FlutterSecureStorage();

  void saveValue({required var key,required var value}) async {
    await storage.write(key: key, value: value);
  }



  Future<String?> readValue({required var key}) async {
    return await storage.read(key: key);
  }

  double getWidth ()
  {
    return MediaQuery.of(context).size.width;
  }
  double getHeight ()
  {
    return MediaQuery.of(context).size.height;
  }


  Utils(this.context);
}