import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Utils{
  BuildContext context;
  late double h;
  late double w;
  GetStorage box = GetStorage();

  void saveValue({required var key,required var value}) async {
    await box.write(key, value);
  }


  Future<String?> readValue({required var key}) async {
    return box.read(key);
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