import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style.dart';

class SavePlayList extends StatefulWidget{
  const SavePlayList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SavePlayListState();
  }


}

class SavePlayListState extends State<SavePlayList>
{
  String svgPath="assets/icons/";
  bool newPlayList=false;
  late TextTheme _textTheme;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    _textTheme=Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
        header(),
        Padding(
          padding: const EdgeInsets.only(left: 24,top: 23,right: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select a playlist to Save to:",style: _textTheme.headline2!.copyWith(fontWeight: FontWeight.w500),),
              ExpandablePanel(
                theme: const ExpandableThemeData(hasIcon: false),
                header: expandedHeader(w),
                collapsed: Container(),
                expanded: playlistItem(w, h),

          )
            ],
          ),
        )
      ],),


    );
  }

  header()
  {
    return   Padding(
      padding: const EdgeInsets.only(top: 36,left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined,color: Colors.white,) ,decoration: BoxDecoration(color: Style.headerbackBtn,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
          Row(
            children: [
              SvgPicture.asset(svgPath+"playlistheader.svg",width: 24,height: 23,),

              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text("Save to Playlist",style: _textTheme.headline1),
              ),
            ],
          ),
          const SizedBox(width: 44,),

        ],
      ),
    );
  }

  expandedHeader(w )
  {
    return newPlayList ? Padding(
      padding: const EdgeInsets.only(top: 36),
      child: Container(padding: EdgeInsets.only(left: 16),child: Row(children: [
        SvgPicture.asset(svgPath+"radiochecked.svg",width: 24,height: 23,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("To your playlists",style: _textTheme.headline5),
        )
      ],),width: w,height: 56,decoration: BoxDecoration(color: Style.accentGold,borderRadius: BorderRadius.circular(16))),
    ) : Padding(
      padding: const EdgeInsets.only(top: 36),
      child: Container(padding: EdgeInsets.only(left: 16),child: Row(children: [
        SvgPicture.asset(svgPath+"radiounchecked.svg",width: 24,height: 23,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("To your playlists",style: _textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w500)),
        )
      ],),width: w,height: 56,decoration: BoxDecoration(color: Style.gray32,borderRadius: BorderRadius.circular(16))),
    );
  }

  playlistItem(w,h)
  {
    return !newPlayList ?Transform.rotate(angle: 4.2,child: ClipRRect(child: Image.network("https://picsum.photos/70/70",width: 70,height: 70,),borderRadius: BorderRadius.circular(16),)) :
    Container();
  }


}