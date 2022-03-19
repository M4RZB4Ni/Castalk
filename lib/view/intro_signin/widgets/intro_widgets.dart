import 'package:castalk/customs/utils.dart';
import 'package:castalk/models/intro_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroWidget extends StatelessWidget{
  final IntroModel _introModel;

  const IntroWidget(this._introModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              //model!.imageUrl,
              'https://arga-mag.com/file/img/2021/01/podcast-3.jpg',
              fit: BoxFit.fitHeight,
              height: Utils(context).getHeight()/1.9,
              width: Utils(context).getWidth(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10,left: 31),
          child: Align(alignment: Alignment.centerLeft,child: Text(_introModel.title,style:TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 24,fontWeight: FontWeight.w500))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Text(_introModel.description,style:Theme.of(context).textTheme.bodyText2,textAlign: TextAlign.start,textDirection: TextDirection.ltr,),
        ),
      ],);
  }

}