import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyArcWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("MediaQuery.of(context).size=${MediaQuery.of(context).size}");
    return CustomPaint(
      painter: MyArcPainter(),
      /**
       * 这里的size好像不影响
       */
      size: Size.fromRadius(50),
    );
  }
}

class MyArcPainter extends CustomPainter {
  Paint _paintRed = Paint()
    ..color = Colors.red
    ..strokeWidth = 10;
  Paint _paintGreen = Paint()
    ..color = Colors.green
    ..strokeWidth = 10;
  Paint _paintBlue = Paint()
    ..color = Colors.blue
    ..strokeWidth = 10;

  Paint _paintYellowStroke = Paint()
    ..color = Colors.yellow
    ..style = PaintingStyle.stroke
    ..strokeWidth = 10;
  Paint _paintYellowFill = Paint()
    ..color = Colors.yellow
    ..style = PaintingStyle.fill
    ..strokeWidth = 10;

  @override
  void paint(Canvas canvas, Size size) {
    // size = Size.fromRadius(50);
    print("size=${size.width} ${size.height} ");
    // TODO: implement paint
    canvas.drawArc(Rect.fromLTWH(0, 0, size.width, size.height), 0, pi * 2,
        false, _paintRed);
    canvas.drawArc(Rect.fromLTWH(0, 0, size.width, size.height), 0, pi, false,
        _paintGreen);
    canvas.drawArc(Rect.fromLTWH(0, 0, size.width, size.height), 0, pi / 2,
        false, _paintBlue);

    /**
     * 画圆弧，不与中心点闭合，线条
     */
    // canvas.drawArc(Rect.fromLTWH(0, 0, size.width, size.height), 0, pi / 4,
    //     false, _paintYellowStroke);
    /**
     * 画圆弧，与中心点闭合，线条扇形
     * drawArc函数的userCenter参数为true表示绘制扇形
     */
    canvas.drawArc(Rect.fromLTWH(0, 0, size.width, size.height), 0, pi / 4,
        true, _paintYellowStroke);
    /**
     * 画圆弧，不与中心点闭合，填充
     */
    // canvas.drawArc(Rect.fromLTWH(0, 0, size.width, size.height), 0, pi / 4,
    //     false, _paintYellowFill);
    /**
     * 画圆弧，与中心点闭合，填充扇形
     * drawArc函数的userCenter参数为true表示绘制扇形
     */
    // canvas.drawArc(Rect.fromLTWH(0, 0, size.width, size.height), 0, pi / 4,
    //     true, _paintYellowFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
