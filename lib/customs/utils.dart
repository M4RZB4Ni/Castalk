import 'package:flutter/cupertino.dart';

class Utils{
  BuildContext context;
  late double h;
  late double w;

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