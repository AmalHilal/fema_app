import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/data/provider.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController t=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
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
            decoration: InputDecoration(
                hintText: "Description",
              border: InputBorder.none
            ),
            onChanged: (value){
              Provider.of<ItemProvider>(context,listen: false).description=value;
            },
          ),
        ),
      ),
    );
  }
}
