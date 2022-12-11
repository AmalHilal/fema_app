import 'package:fema/future/model/item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class ItemProvider with ChangeNotifier{
double value =0;
String category="";
String description="";
DateTime date=DateTime.now();
bool isIncome=true;

List<Item> item=[];

void addItem(){
  Item n=Item(category: category, description: description, value: value, date: date, isIncome: isIncome);
  item.add(n);
  notifyListeners();
}

}