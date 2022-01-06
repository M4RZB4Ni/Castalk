import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Drafts extends StatefulWidget{
  const Drafts({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DraftsState();
  }


}

class DraftsState extends State<Drafts>{
  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 41),
        shrinkWrap: true, itemBuilder: (BuildContext context, int index) {
          return _likedItem(w,h);
      },

      ),

    );
  }



  _47Buttons({required var buttonName,var color,var backColor})
  {
    return Container(
        margin: const EdgeInsets.only(left: 6,right: 0,top: 0),
        padding: const EdgeInsets.all(12),
        width: 47,
        height: 47,
        child: SvgPicture.asset(
          buttonName,
          width: 17,
          height: 17,
          color: color,
        ),
        decoration: BoxDecoration(
            color: backColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12)));
  }


  _likedItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
      child: Slidable(
      endActionPane: ActionPane(
        motion:  const ScrollMotion(),

        children:  [
          Column(
            children: [
              Row(children: [
                _47Buttons(buttonName: Cicon.delete,color: Colors.white ,backColor: Style.redAccent),
                _47Buttons(buttonName: Cicon.upload,backColor: Style.accentGold),
              ],),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Row(children: [
                  _47Buttons(buttonName: Cicon.modify,backColor: Style.gray88),
                  _47Buttons(buttonName: Cicon.calendar,color: Style.gray27,backColor: Colors.white),
                ],),
              )
            ],
          )
        ],
      ),
      child:Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
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
                        Cicon.play,
                      ),
                      decoration: BoxDecoration(
                          color: Style.gray3cop30,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)),
                    ) /* add child content here */,
                  ),
                ],
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        "Episode name which is long...".length > 30
                            ? "Episode name which is long...".substring(0, 30) + "..."
                            : "Episode name which is long...",
                        style: Style.t_500_14w,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(Cicon.timer),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text("1 : 26 : 45",
                                        style: Style.t_400_12_grayA1),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Text("2 days ago",
                                    style: Style.t_400_12_grayA1),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,top: 12),
                          child: Text("Scheduled for 20/12/21",
                              style:  Style.t_400_12g),
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
                    Cicon.arrow_left,
                    width: 12,
                    height: 6),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8,right: 12,left: 12,top: 8),
            child: Divider(height: 1,color: Style.divider,thickness: 1,),
          )
        ],
      )),
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
          Text("Drafts", style: Style.t_500_24w),
          const SizedBox(
            width: 44,
            height: 44,
          ),

        ],
      ),
    );
  }



}
