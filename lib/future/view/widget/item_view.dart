import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemView extends StatelessWidget {
  final String category;
  final String description;
  final double value;
  final DateTime date;
  final bool isIncome;


  ItemView(
  {required this.category,required this.description,required this.value,required this.date,required this.isIncome});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 360,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 20),
                child: Text(category,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ) ,
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 170),
                child: Text("${isIncome?"+":"-"} ${value.toString()}",style: TextStyle(color:isIncome?Color(0xff00A86B):Color(0xffFD3C4A),fontSize: 25,fontWeight: FontWeight.bold),),
              )
            ],
          ),
          SizedBox(height:15 ,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(description,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: Text(DateFormat('dd/mm/yyyy').format(DateTime.now()),style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
              )
            ],
          ),

        ],
      ),
    );
  }
}
