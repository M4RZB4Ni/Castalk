import 'package:flutter/material.dart';

class APPMultiSelectGrid extends StatefulWidget{
  const APPMultiSelectGrid({Key? key}) : super(key: key);

  @override
  _APPMultiSelectGridState createState() => _APPMultiSelectGridState();
}

class _APPMultiSelectGridState extends State<APPMultiSelectGrid> {
  List<Course> corcess=List.empty(growable: true);
  bool selectAll=false;
  @override
  void initState() {
    super.initState();
    corcess.add(Course("Swift",false));
    corcess.add(Course("Angular",false));
    corcess.add(Course("BootStrap",false));
    corcess.add(Course("CSS",false));
    corcess.add(Course("Eclipse",false));
    corcess.add(Course("Fullstack Web",false));
    corcess.add(Course("JQuery",false));
    corcess.add(Course(".Net",false));
    corcess.add(Course("ADO .Net",false));
    corcess.add(Course("Phython",false));
    corcess.add(Course("Salesforece",false));
    corcess.add(Course("SpringBoot",false));
    corcess.add(Course("Tableu",false));
    corcess.add(Course("Docker",false));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(body: SafeArea(
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(value: selectAll, onChanged: (bool? value){
              setState(() {
                selectAll=value!;
                corcess.forEach((element) {
                  element.selected=value;
                });
              });

            }),
            GridView.builder(
              shrinkWrap: true,
              itemBuilder: (ctx,index){
                return prepareList(index);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
                (crossAxisCount: 3),
              itemCount: corcess.length,
            ),
          ],
        ),
      ),
    ),
    );
  }

  Widget prepareList(int k)
  {
    return Card(
      child: Hero(
        tag: "text$k",
        child: Material(
          child: InkWell(
            onTap: (){},
            child: Container(
              color: Colors.blueGrey,
              height: 100,
              child: Stack(
                children: [
                  Center(child: Text(corcess[k].name,style: const TextStyle(color: Colors.white,fontSize: 20),)),
                  Positioned(child: Checkbox(value: corcess[k].selected, onChanged: (bool? value) {
                    setState(() {
                      if(!value!) {
                        selectAll=false;
                      }
                      corcess[k].selected=value;
                    });
                  },))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Course{
  String name;
  bool selected;
  Course(this.name,this.selected);
}