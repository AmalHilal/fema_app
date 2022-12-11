import 'package:fema/future/controller/data/provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
class MyPickerDate extends StatefulWidget {
  const MyPickerDate({Key? key}) : super(key: key);

  @override
  State<MyPickerDate> createState() => _MyPickerDateState();
}

class _MyPickerDateState extends State<MyPickerDate> {
  var _date=DateFormat('dd/mm/yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), border: Border.all()),
      child: InkWell(
        onTap: _showDatePicker,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Text(_date.toString()),
        ),
      ),
    );
  }

  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2025))
        .then((value) {
          setState(() {
            _date=DateFormat('dd/MM/yyyy').format(value!);
            Provider.of<ItemProvider>(context,listen: false).date=value;
          });
    });
  }
}
