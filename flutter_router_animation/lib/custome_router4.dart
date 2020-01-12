import 'package:flutter/material.dart';

// 动画渐入渐出
class CustomRoute4 extends PageRouteBuilder {

  final Widget widget;

  CustomRoute4(this.widget)
      :super(
    // 设置过渡时间
      transitionDuration: Duration(seconds: 1),
      pageBuilder: (
          BuildContext context,      // 三个参数   上下文
          Animation<double> animations1,  //
          Animation<double> animations2,
          ){
        return widget;
      },
      transitionsBuilder: (
          BuildContext context,
          Animation<double> animations1,
          Animation<double> animations2,
          Widget child
          ){
        // 缩放
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(-1.0, 0.0),
            end: Offset(0.0, 0.0)
          ).animate(CurvedAnimation(
            parent: animations1,
            curve: Curves.fastLinearToSlowEaseIn
          )),
            child: child,
        );
      }
  );
}