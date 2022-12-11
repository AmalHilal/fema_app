import 'package:flutter/material.dart';

class Item{
  final String category;
  final String description;
  final double value;
  final DateTime date;
  final bool isIncome;

  Item({required this.category,required this.description,required this.value,required this.date,required this.isIncome});
}