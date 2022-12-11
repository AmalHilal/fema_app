import 'package:fema/future/controller/data/provider.dart';
import 'package:fema/future/view/widget/picker_date.dart';
import 'package:fema/future/view/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/dropdown.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  TextEditingController c = TextEditingController();

  @override
  void initState() {
    c.text = "55698";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Add Transaction",
            style: TextStyle(fontSize: 25, color: Colors.black),
          )),
          backgroundColor: Color(0xffFFF6E5),
        ),
        body: Container(
          color: Color(0xffFFF6E5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: Text(
                    "How much?",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 20),
                  child: TextField(
                    controller: c,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter the Amount",
                        hintStyle:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40))),
                    height: 400,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          MyDrop(),
                          MyTextField(),
                          Padding(
                            padding: const EdgeInsets.only(top: 30,bottom: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: InkWell(
                                    child: Center(
                                        child: Text(
                                      "Income",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    onTap: (){
                                      Provider.of<ItemProvider>(context,listen: false).isIncome=true;
                                    },
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xff00A86B),
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 30,
                                  width: 100,
                                ),
                                Container(
                                  child: InkWell(
                                    child: Center(
                                        child: Text(
                                      "Expense",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    onTap: (){
                                      Provider.of<ItemProvider>(context,listen: false).isIncome=false;
                                    },
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFD3C4A),
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 30,
                                  width: 100,
                                )
                              ],
                            ),
                          ),
                          MyPickerDate()
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: Center(
                      child: InkWell(
                    onTap: () {
                      Provider.of<ItemProvider>(context,listen: false).value=double.parse(c.text);
                      Provider.of<ItemProvider>(context,listen: false).addItem();
                      Navigator.of(context).pushNamed("/transaction");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(20)),
                      width: 350,
                      height: 60,
                      child: Center(
                          child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
