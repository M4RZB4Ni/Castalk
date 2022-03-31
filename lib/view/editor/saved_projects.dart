import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SavedProjects extends StatefulWidget {
  const SavedProjects({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SavedProjectsState();
  }
}

class SavedProjectsState extends State<SavedProjects> {

  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: Padding(
        padding: const EdgeInsets.only(top: 28),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return playlistItem();
          },
        ),
      ),
    );
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child:  Row(
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
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child:
        Text("Saved Projects", style: _textTheme.headline1),
      ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }

  playlistItem() {
    return Slidable(
        endActionPane: ActionPane(

          // A motion is a widget used to control how the pane animates.
          motion:  ScrollMotion(),


          // All actions are defined in the children parameter.
          children:  [
            Row(children: [
              _47Buttons(buttonName: Cicon.delete),
              _47Buttons(buttonName: Cicon.modify),
            ],)
          ],
        ),
        child: Container(
          height: 74,
          margin: EdgeInsets.only(top: 8,left: 14,right: 14),
          decoration: BoxDecoration(color:Style.gray2F,borderRadius: BorderRadius.circular(12)),
          child: Row(children: [
            Container (
                margin: const EdgeInsets.only(left: 14,right: 17),
                padding: const EdgeInsets.all(18),
                width: 57,
                height: 57,
                child: SvgPicture.asset(
                  svgPath + "ssso.svg",
                  width: 17,
                  height: 17,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    color: Style.white20,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12))),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 9,top: 13),
                  child:Text("Project name",style: Style.t_400_14w,),

                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16,),
                  child:  Text("02/12/2021",style: Style.t_300_10g9D,),
                )
              ],
            )),
            Container(
              height: 62,
              width: 26,
              margin: const EdgeInsets.only(left: 7,right: 4),

              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(color: Style.grayC3_half,borderRadius: BorderRadius.circular(12)),
              child: SvgPicture.asset(
                  svgPath + "arrow_left.svg",
                  width: 12,
                  height: 6),
            )
          ],),
        ));
  }


  _47Buttons({required String buttonName,var color})
  {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.all(12),
        width: 47,
        height: 47,
        child: SvgPicture.asset(
          svgPath + "$buttonName.svg",
          width: 17,
          height: 17,
          color: color,
        ),
        decoration: BoxDecoration(
            color: Style.white15,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12)));
  }

}
