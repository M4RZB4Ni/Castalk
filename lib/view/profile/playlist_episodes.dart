import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlayListEpisodes extends StatefulWidget{
  const PlayListEpisodes({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PlayListEpisodesState();
  }


}

class PlayListEpisodesState extends State<PlayListEpisodes>
{

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
      body: ListView.builder(itemBuilder: (context, index) {
        return _likedItem(w,h);
      },),

    );
  }

  _likedItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
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
                            color: Style.gray32,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12)),
                      ) /* add child content here */,
                    ),
                  ],
                ),
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(left: 14),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset(svgPath+"timer.svg"),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("1 : 26 : 45",
                                    style: _textTheme.headline6),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            children: [
                              SvgPicture.asset(svgPath+"heart_empty.svg"),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("250",
                                    style: _textTheme.headline6),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
              Container(
                height: 96,
                width: 44,

                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(color: Style.gray48op50,borderRadius: BorderRadius.circular(12)),
                child: SvgPicture.asset(
                    svgPath + "arrow_left.svg",
                    width: 12,
                    height: 6),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 12,right: 12,left: 12),
            child: Divider(height: 1,color: Style.divider,thickness: 1,),
          )
        ],
      ),
    );

  }
/*  Container(
  height: 110,
  padding: const EdgeInsets.only(top: 5,bottom: 5,right: 6,left: 6),
  decoration: BoxDecoration(color: Style.gray48op50,borderRadius: BorderRadius.circular(12)),
  child: SvgPicture.asset(
  svgPath + "arrow_left.svg",
  width: 24,
  height: 12),
  )*/

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
                    color: Style.headerbackBtn,
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
                    child: Text("Playlist", style: _textTheme.headline1),
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
                      color: Style.headerbackBtn,
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


}