import 'package:flutter/material.dart';

// 动画渐入渐出
class CustomRoute2 extends PageRouteBuilder {

  final Widget widget;

  CustomRoute2(this.widget)
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
        return ScaleTransition(
          scale: Tween(begin: 0.0, end: 1.0)
                .animate(CurvedAnimation(
                  parent: animations1,
                  curve: Curves.fastOutSlowIn
                )),
                child: child,
         );
        }
  );
}