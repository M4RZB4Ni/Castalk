import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../style.dart';

class SavePlayList extends GetView<SavePlayList> {

  String svgPath = "assets/icons/";
  bool newPlayList = false;
  bool toYourPlaylist = true;
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Style.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 23, right: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select a playlist to Save to:",
                  style: _textTheme.headline2!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                ExpandablePanel(
                    theme: const ExpandableThemeData(hasIcon: false),
                    header: expandedHeaderToYourPlaylist(Get.width),
                    collapsed: Container(),
                    expanded: SizedBox(
                        width: 120, height: 150, child: playlistItem(Get.width, Get.height))),
                ExpandablePanel(
                    theme: const ExpandableThemeData(hasIcon: false),
                    header: expandedHeaderNewPlayList(Get.width),
                    collapsed: Container(),
                    expanded: SizedBox(
                      width: Get.width,
                      height: 150,
                      child: newPlaylist(Get.width, Get.height),
                    ))
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 20,bottom: 36),
        child: ElevatedButton(
          onPressed: () => debugPrint(""),
          child: const Text(
            "Save",
            style: TextStyle(color: Color(0xff283034)),
          ),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 17, horizontal: 58)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      side: const BorderSide(color: Color(0xffFFB800)))),
              backgroundColor:
              MaterialStateProperty.all(const Color(0xffFFB800)),
              textStyle: MaterialStateProperty.all(const TextStyle(
                  color: Color(0xff283034),
                  fontSize: 18,
                  fontWeight: FontWeight.w500))),
        ),
      )
      ,
    );
  }

  header() {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
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
          Row(
            children: [
              SvgPicture.asset(
                svgPath + "playlistheader.svg",
                width: 24,
                height: 23,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text("Save to Playlist", style: _textTheme.headline1),
              ),
            ],
          ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }

  expandedHeaderToYourPlaylist(w) {
    return toYourPlaylist
        ? Padding(
            padding: const EdgeInsets.only(top: 36),
            child: Container(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      svgPath + "radiochecked.svg",
                      width: 24,
                      height: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("To your playlists",
                          style: _textTheme.headline5),
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
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      svgPath + "radiounchecked.svg",
                      width: 24,
                      height: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("To your playlists",
                          style: _textTheme.bodyText1!
                              .copyWith(fontWeight: FontWeight.w500)),
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

  expandedHeaderNewPlayList(w) {
    return newPlayList
        ? Padding(
            padding: const EdgeInsets.only(top: 36),
            child: Container(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      svgPath + "radiochecked.svg",
                      width: 24,
                      height: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("To your playlists",
                          style: _textTheme.headline5),
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
            padding: const EdgeInsets.only(top: 12),
            child: Container(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      svgPath + "radiounchecked.svg",
                      width: 24,
                      height: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("To your playlists",
                          style: _textTheme.bodyText1!
                              .copyWith(fontWeight: FontWeight.w500)),
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
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 19),
            child: Stack(
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
          ),
          Text(
            "Playlist Name",
            style: _textTheme.headline2!.copyWith(fontWeight: FontWeight.w500),
          ),
          Text("124 Episods", style: _textTheme.headline6),
        ],
      ),
    );
  }

  newPlaylist(w, h) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 23,),
          child: Text(
            "Playlist Name:",
            style: _textTheme.bodyText1!.copyWith(fontSize: 16),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
            height: 55,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                border: Border.all(width: 1, color: const Color(0xff484848))),
            width: w,
            child: TextField(
                controller: numberController,
                textAlign: TextAlign.left,
                maxLines: 1,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: false,
                    contentPadding:
                        const EdgeInsets.only(top: 12, bottom: 12, left: 19),
                    hintText: "Add playlist name",
                    hintStyle: TextStyle(color: Get.theme.hintColor),
                    fillColor: Colors.white)))
      ],
    );
  }
}
