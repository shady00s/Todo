
import 'package:flutter/material.dart';

class TaskCardModel{
  String?title;
  int?left;
  int?done;
  Color?bkColor;
  IconData?cardIcon;
  bool?isLast;
  TaskCardModel({required this.title,required this.left,required this.done,required this.isLast,required this.bkColor,required this.cardIcon});
}