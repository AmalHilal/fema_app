import 'package:fema/future/controller/data/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/data/data_sourse.dart';

class MyDrop extends StatefulWidget {
  const MyDrop({Key? key}) : super(key: key);

  @override
  State<MyDrop> createState() => _MyDropState();
}

class _MyDropState extends State<MyDrop> {
  var x="Category";
  TextEditingController c=TextEditingController();
  var l=["add","food", "salry", "vats",];
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton(
                          isExpanded: true,
                            underline: SizedBox(),
                            //value: x,
                            items:l
                                .map((e) => DropdownMenuItem(child: Text("$e",style: TextStyle(color: e=="add"?Colors.indigoAccent:Colors.black),),
                              value: e,
                            ))
                                .toList(),
                            onChanged: (value){
                              x=value.toString();
                              Provider.of<ItemProvider>(context,listen: false).category=x;
                              setState(() {

                              });
                            },
                          hint: Text("$x"),


                            ),
                      ),
                    ),
                  ),
                ),


            ),
            SizedBox(height: 30,),
            x=="add"?Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,top: 4),
                          child: TextField(
                            controller: c,
                            decoration: InputDecoration(
                              hintText: "Enter New Category",
                              border: InputBorder.none
                            ),

                          ),
                        ),
                      ),
                    ),
                    TextButton(onPressed: (){
                      l.add(c.text);
                      setState(() {

                      });
                    }, child: Text("add"))
                  ],
                )
            ):Container()
          ],
        )
    );
  }

}
