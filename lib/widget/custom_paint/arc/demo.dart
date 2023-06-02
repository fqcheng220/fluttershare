import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttershare/widget/custom_paint/arc/custom_widget_arc.dart';

void main() {
  runApp(MaterialApp(home: Center(child: MyArcWidget()),));
  /**
   * 这种写法会导致MyArcWidget撑满屏幕
   */
  // runApp(MaterialApp(home: MyArcWidget()));
}
