import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style.dart';

class Playlist extends StatefulWidget{
  const Playlist({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PlaylistState();
  }


}

class PlaylistState extends State<Playlist>
{

  String svgPath="assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    _textTheme=Theme.of(context).textTheme;

    double w = MediaQuery.of(context).size.width;
  //  double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(preferredSize: Size(w,180),
      child: header(w)),
      body:
    GridView.builder(itemBuilder: (context, index) {
      return SizedBox(width: 130,height: 180,child: playlistItem());
    }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 2/3),)
      ,);
  }

  header(w)
  {
    return   Padding(
      padding: const EdgeInsets.only(top: 36,left: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined,color: Colors.white,) ,decoration: BoxDecoration(color: Style.headerbackBtn,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
              Row(
                children: [
                  SvgPicture.asset(svgPath+"playlist.svg",width: 24,height: 23,color: Style.accentGold,),

                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Text("Save to Playlist",style: _textTheme.headline1),
                  ),
                ],
              ),
              const SizedBox(width: 44,),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 33),
            child: Row(children: [
              Container(height: 55,decoration:  BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(12)),border: Border.all(width: 1,color: const Color(0xff484848))),width: w/2,
                  child: TextField(
                      controller: numberController,
                      textAlign: TextAlign.left,maxLines: 1,decoration: InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
                      hintText: "Type to Search...",hintStyle: TextStyle(color: Theme.of(context).hintColor),fillColor: Colors.white)))

            ],),
          )
        ],
      ),
    );
  }
  playlistItem()
  {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(children: [

            SizedBox(
              width: 125,height: 125,
              child: Transform.rotate(angle: -0.2,child: Card( shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),clipBehavior: Clip.antiAlias,elevation: 5,shadowColor: Colors.black.withOpacity(0.5),child: Image.network(
                //model!.imageUrl,
                'https://picsum.photos/125/125',
                fit: BoxFit.cover,
                height: 125,
                width: 125,
              ))),
            ),
            SizedBox(
              width: 125,height: 125,

              child: Transform.rotate(angle: 0.2,child: Card( shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),clipBehavior: Clip.antiAlias,elevation: 5,shadowColor: Colors.black.withOpacity(0.5),child: Image.network(
                //model!.imageUrl,
                'https://picsum.photos/120/120',
                fit: BoxFit.cover,
                height: 120,
                width: 120,
              ))),
            ),


            SizedBox(
              width: 125,height: 125,
              child: Positioned(bottom: 0,right: 0,child: Transform.rotate(angle: -0.2,child: Card( shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),clipBehavior: Clip.antiAlias,elevation: 5,shadowColor: Colors.black.withOpacity(0.5),child: Image.network(
                'https://picsum.photos/123/123',
                fit: BoxFit.cover,
                height: 123,
                width: 123,
              ))),),
            )

          ],),
          Text("Playlist Name",style: _textTheme.headline2!.copyWith(fontWeight: FontWeight.w500,color: Colors.white),),
          Text("124 Episods",style: _textTheme.headline6),
        ],
      ),
    );
  }


}