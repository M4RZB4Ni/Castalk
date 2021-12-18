import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Downloads extends StatefulWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DownloadsState();
  }
}

class DownloadsState extends State<Downloads> {
  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _textTheme = Theme.of(context).textTheme;

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(preferredSize: Size(w, 180), child: header(w)),
      body: SingleChildScrollView(child: Column(
        children: [inProgress(w, h),downloaded(w, h)],
      )),
    );
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child: Column(
        children: [
          Row(
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
                  // SvgPicture.asset(
                  //   svgPath + "Downloads.svg",
                  //   width: 24,
                  //   height: 23,
                  //   color: Style.accentGold,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Text("Downloads", style: _textTheme.headline1),
                  ),
                ],
              ),
              const SizedBox(
                width: 44,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 33),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        border: Border.all(
                            width: 1, color: const Color(0xff484848))),
                    width: w / 2,
                    child: TextField(
                        controller: numberController,
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            isDense: false,
                            contentPadding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 19),
                            hintText: "Type to Search...",
                            hintStyle:
                                TextStyle(color: Theme.of(context).hintColor),
                            fillColor: Colors.white))),
                Container(
                  padding: const EdgeInsets.all(12),
                  width: 44,
                  height: 44,
                  child: SvgPicture.asset(
                    svgPath + "search.svg",
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
                    svgPath + "filter.svg",
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
                    svgPath + "sort.svg",
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
          ),
        ],
      ),
    );
  }

  inProgress(w, h) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 21, left: 15),
          child: Text(
            "In Progress",
            style: _textTheme.headline2!.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          width: w,
          height: h / 2,
          child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: inProgressItem());
            },
          ),
        )
      ],
    );
  }

  inProgressItem() {
    bool downloading = true;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 100,
                height: 110,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(25),

                      height: 96,
                      width: 96,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: NetworkImage('https://picsum.photos/96/96'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        width: 77,
                        height: 77,
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          svgPath + "play.svg",
                        ),
                        decoration: BoxDecoration(
                            color: Style.gray3cop30,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12)),
                      ) /* add child content here */,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Episode name which is long...".length > 30
                        ? "Episode name which is long...".substring(0, 30) + "..."
                        : "Episode name which is long...",
                    style: _textTheme.headline1!.copyWith(fontSize: 14),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          downloading
                              ? Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text("Downloading...",
                                    style: _textTheme.headline2!
                                        .copyWith(fontWeight: FontWeight.w500)),
                              )
                              : Padding(
                                 padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                    "Paused",
                                    style: _textTheme.headline2!
                                        .copyWith(color: Style.grayA1),
                                  ),
                              ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text("67%",
                                style: downloading
                                    ? _textTheme.headline2!
                                        .copyWith(fontWeight: FontWeight.w500)
                                    : _textTheme.headline2!
                                        .copyWith(color: Style.grayA1)),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 5,bottom: 5,right: 6,left: 6),
                        decoration: BoxDecoration(color: Style.gray48op50,borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            downloading
                                ? Stack(
                                    children: [
                                      SvgPicture.asset(
                                          svgPath + "download_prog.svg",
                                          width: 38,
                                          height: 38),
                                      Positioned.fill(child: Align(child: Text("65", style: _textTheme.overline))),
                                    ],
                                  )
                                : SvgPicture.asset(
                                    Cicon.download,
                                    width: 19,
                                    height: 16,
                                    color: Style.grayc4,
                                  ),
                            !downloading
                                ? Text("Resume",
                                    style: _textTheme.headline2!
                                        .copyWith(fontWeight: FontWeight.w500))
                                : Text("Pause",
                                    style: _textTheme.headline2!
                                        .copyWith(fontWeight: FontWeight.w500))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 12,right: 12,left: 12),
          child: Divider(height: 1,color: Style.divider,thickness: 1,),
        )
      ],
    );
  }




  downloaded(w, h) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 21, left: 15,top: 18),
          child: Text(
            "Downloaded",
            style: _textTheme.headline2!.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          width: w,
          height: h / 2,
          child: ListView.builder(


            physics: const NeverScrollableScrollPhysics(),

            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: downloadedItem());
            },
          ),
        )
      ],
    );
  }

  downloadedItem() {
    bool downloading = true;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            width: 125,
            height: 125,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(25),

                  height: 96,
                  width: 96,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: NetworkImage('https://picsum.photos/96/96'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    width: 77,
                    height: 77,
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      svgPath + "play.svg",
                    ),
                    decoration: BoxDecoration(
                        color: Style.gray3cop30,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12)),
                  ) /* add child content here */,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Episode name which is long...".length > 30
                    ? "Episode name which is long...".substring(0, 30) + "..."
                    : "Episode name which is long...",
                style: _textTheme.headline1!.copyWith(fontSize: 14),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      downloading
                          ? Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text("Downloading...",
                            style: _textTheme.headline2!
                                .copyWith(fontWeight: FontWeight.w500)),
                      )
                          : Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "Paused",
                          style: _textTheme.headline2!
                              .copyWith(color: Style.grayA1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text("67%",
                            style: downloading
                                ? _textTheme.headline2!
                                .copyWith(fontWeight: FontWeight.w500)
                                : _textTheme.headline2!
                                .copyWith(color: Style.grayA1)),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 5,right: 6,left: 6),
                    decoration: BoxDecoration(color: Style.gray48op50,borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        downloading
                            ? Stack(
                          children: [
                            SvgPicture.asset(
                                svgPath + "download_prog.svg",
                                width: 38,
                                height: 38),
                            Positioned.fill(child: Align(child: Text("65", style: _textTheme.overline))),
                          ],
                        )
                            : SvgPicture.asset(
                          Cicon.download,
                          width: 19,
                          height: 16,
                          color: Style.grayc4,
                        ),
                        !downloading
                            ? Text("Resume",
                            style: _textTheme.headline2!
                                .copyWith(fontWeight: FontWeight.w500))
                            : Text("Pause",
                            style: _textTheme.headline2!
                                .copyWith(fontWeight: FontWeight.w500))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
