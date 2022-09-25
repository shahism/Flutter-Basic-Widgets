import 'package:flutter/material.dart';
import 'package:layoutapp/layoutComponents/ConstraintsApp.dart';
import 'package:layoutapp/layoutComponents/columnApp.dart';
import 'package:layoutapp/layoutComponents/gridApp.dart';
import 'package:layoutapp/layoutComponents/listviewApp.dart';
import 'package:layoutapp/layoutComponents/rowApp.dart';
import 'package:layoutapp/layoutComponents/rowXColumnApp.dart';
import 'package:layoutapp/layoutComponents/stackApp.dart';

void main() {
  runApp(const ConstraintsApp());
}





//! Single level Widgets (expect child<widget>)
// * Container ,Text , Icons etc (Yesterday)
//? Custom Widgets -> the widgets we made ourselves by using two or more than two widgets

//! Layout Widgets (expect Children[<Widgets>])
//? Column for vertical alignment
//? Rows for horizontal alignment
//? Listview -> column like alignment that is scrollable
//? Gridview -> 2D list by your own choice that is scrollable
//? Muitple Layout Widget -> different type of layouts are used in it (real simple App's layout )  
// ? Stack (To align Widgets upon Each other) 

//! Constraints ?
// Nothing but Spacing , sizing 
//* 4 double values that determines the max-min width and max-min height

//TODO: You can make Variables and Functions to breakdown your Widget Tree in a simpler form






