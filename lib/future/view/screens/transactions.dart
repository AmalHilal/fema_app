import 'package:fema/future/controller/data/provider.dart';
import 'package:fema/future/view/widget/item_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TransAction extends StatefulWidget {
  const TransAction({Key? key}) : super(key: key);

  @override
  State<TransAction> createState() => _TransActionState();
}

class _TransActionState extends State<TransAction> {
  var x="Month";
  var l=["All","Test1", "Test2", "Test3",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text("TeansAcion",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        ),
        backgroundColor: Color(0xffFFF6E5),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFF6E5),
        ),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 30,right: 150,bottom: 20),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: DropdownButton(
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
                        hint: Text("$x",style: TextStyle(fontWeight: FontWeight.bold),),


                      ),
                    ),
                  ),
                ),

              ],
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.separated(itemBuilder: (context,index){
                  return ItemView(category: Provider.of<ItemProvider>(context).item[index].category, description: Provider.of<ItemProvider>(context).item[index].description, value: Provider.of<ItemProvider>(context).item[index].value, date: Provider.of<ItemProvider>(context).item[index].date, isIncome: Provider.of<ItemProvider>(context).item[index].isIncome);
                },
                    separatorBuilder: (ctx,i){
                  return SizedBox(
                    height: 40,
                  );
                },
                    itemCount: Provider.of<ItemProvider>(context).item.length),
              ),
            )
          ],
        ),
      ),
    );
  }
}
