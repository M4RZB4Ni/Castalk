import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewPost extends StatefulWidget{
  const NewPost({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NewPostState();
  }



}

class NewPostState extends State<NewPost>{


  bool toYourPlaylist = true;
  TextEditingController numberController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(

      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 50), child: header(w)),
      body: SingleChildScrollView(
        child:
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
              //  padding: const EdgeInsets.only(left: 24, top: 48, right: 23),
                padding: const EdgeInsets.only(left: 24, top: 48, right: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 17),
                      child: Text(
                        "What do you want to post?",
                        style: Style.t_400_18w,
                      ),
                    ),
                    ExpandablePanel(
                        theme: const ExpandableThemeData(hasIcon: false),
                        header: expandedHeaderToYourPlaylist(w,icon: Cicon.folder, title: "Create New Podcast"),
                        collapsed: Container(),
                        expanded: Container()),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: ExpandablePanel(
                          theme: const ExpandableThemeData(hasIcon: false),
                          header: expandedHeaderToYourPlaylist(w,icon: Cicon.playlist, title: "Add as New Season",color: Colors.black),
                          collapsed: Container(),
                          expanded: Container(
                              width: w, height: 320, child: _ItemSection(w))),
                    ),

                    ExpandablePanel(
                        theme: const ExpandableThemeData(hasIcon: false),
                        header: expandedHeaderToYourPlaylist(w,icon: Cicon.mic, title: "Add as New Episode"),
                        collapsed: Container(),
                        expanded: Container(
                            width: w, height: 320, child: _ItemSection(w))),
                  ],
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 31,top: 40),
                    child: Text("You have 5 Open Podcasts",style: Style.t_400_14_9d,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22,bottom: 80,left: 27),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "Proceed",
                                style: Style.t_500_18_back,
                              ),
                            ),
                            SvgPicture.asset(Cicon.arrow_right_bold,color: Style.background,),

                          ]),
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(const Size(213, 54)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.only(left: 6, top: 6, bottom: 6)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                  side: const BorderSide(color: Style.accentGold))),
                          backgroundColor: MaterialStateProperty.all(Style.accentGold)),
                    ),
                  ),
                ],
              )

            ],
          ),
        )
      /*Padding(
        padding: const EdgeInsets.only(left: 24, top: 48,bottom: 18, right: 23),
        child: )*/,


    ));
  }
  _searchBar(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 44,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(width: 1, color: const Color(0xff484848))),
              width: w / 2,
              child: TextField(
                  controller: numberController,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: false,
                      contentPadding:
                      const EdgeInsets.only(top: 12, bottom: 12, left: 19),
                      hintText: "Type to Search...",
                      hintStyle: TextStyle(color: Theme.of(context).hintColor),
                      fillColor: Colors.white))),
          Container(
            padding: const EdgeInsets.all(12),
            width: 44,
            height: 44,
            child: SvgPicture.asset(
              Cicon.search,
              width: 14,
              height: 14,
            ),
            decoration: BoxDecoration(
                color: Style.headerBackBtn,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),
          Container(
            width: 44,
            height: 44,
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              Cicon.filter,
              width: 14,
              height: 14,
            ),
            decoration: BoxDecoration(
                color: Style.glassBlack,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: 44,
            height: 44,
            child: SvgPicture.asset(
              Cicon.sort,
              width: 14,
              height: 14,
            ),
            decoration: BoxDecoration(
                color: Style.glassBlack,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          )
        ],
      ),
    );
  }

  _ItemSection(w)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchBar(w),

          Padding(
            padding: const EdgeInsets.only(bottom: 12,top: 17),
            child: Text("Select the Podcast:",style:Style.t_400_14_9d),
          ),
          SizedBox(
            width: w,
            height: 177,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return  _newFromFollowingsItem();
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
  _newFromFollowingsItem(){
    return  Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            height: 122,
            width: 122,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/122/122'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Podcast Name",style: Style.t_500_18w,),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text("5 Seasons",style: Style.t_400_14_grayA1,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }



  expandedHeaderToYourPlaylist(w,{required title,required icon,color}) {
    return toYourPlaylist
        ? Padding(
      padding: const EdgeInsets.only(top: 17),
      child: Container(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SvgPicture.asset(
                  Cicon.radiochecked,
                  width: 24,
                  height: 23,
                ),
              ),

              Row(
                children: [
                  SvgPicture.asset(
                    icon,
                    color: color,
                    width: 24,
                    height: 23,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(title,
                        style: Style.t_500_18_back),
                  ),
                ],
              )
            ],
          ),
          width: w,
          height: 56,
          decoration: BoxDecoration(
              color: Style.accentGold,
              borderRadius: BorderRadius.circular(16))),
    )
        : Padding(
      padding: const EdgeInsets.only(top: 36),
      child: Container(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SvgPicture.asset(
                  Cicon.radiochecked,
                  width: 24,
                  height: 23,
                ),
              ),

              Row(
                children: [
                  SvgPicture.asset(
                    icon,
                    color: color,
                    width: 24,
                    height: 23,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(title,
                        style: Style.t_500_18_back),
                  ),
                ],
              )
            ],
          ),
          width: w,
          height: 56,
          decoration: BoxDecoration(
              color: Style.gray3cop30,
              borderRadius: BorderRadius.circular(16))),
    );
  }


  playlistItem(w, h) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          children: [
            Transform.rotate(
                angle: -0.2,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    clipBehavior: Clip.antiAlias,
                    elevation: 5,
                    shadowColor: Colors.black.withOpacity(0.5),
                    child: Image.network(
                      //model!.imageUrl,
                      'https://picsum.photos/70/70',
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ))),
            Transform.rotate(
                angle: 0.2,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    clipBehavior: Clip.antiAlias,
                    elevation: 5,
                    shadowColor: Colors.black.withOpacity(0.5),
                    child: Image.network(
                      //model!.imageUrl,
                      'https://picsum.photos/71/71',
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ))),
            Positioned(
              bottom: 2,
              right: 3,
              child: Transform.rotate(
                  angle: -0.2,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      clipBehavior: Clip.antiAlias,
                      elevation: 5,
                      shadowColor: Colors.black.withOpacity(0.5),
                      child: Image.network(
                        'https://picsum.photos/70/70',
                        fit: BoxFit.cover,
                        height: 70,
                        width: 70,
                      ))),
            )
          ],
        ),
        Text(
          "Playlist Name",
          style: Style.t_500_18w,
        ),
        Text("124 Episodes", style: Style.t_400_14_grayA1),
      ],
    );
  }


  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 44,
            height: 44,
            child: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                color: Style.headerBackBtn,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),
          Text("New Post", style: Style.t_500_24w),
          Container(
            width: 44,
            height: 44,
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              Cicon.question_mark,
            ),
            decoration: BoxDecoration(
                color: Style.headerBackBtn,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),

        ],
      ),
    );
  }



}