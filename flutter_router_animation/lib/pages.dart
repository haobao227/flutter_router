import 'package:flutter/material.dart';
import 'custome_router.dart';
import 'custome_router2.dart';
import 'custome_router3.dart';
import 'custome_router4.dart';
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('FirstPage', style: TextStyle(fontSize: 36.0, color: Colors.white)),
        elevation: 0.0,     // 跟底部body融合程度  bar的阴影效果
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).push(CustomRoute4(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text('SecondPage',style:TextStyle(fontSize:36.0, color: Colors.white),),
          backgroundColor: Colors.pinkAccent,
          leading:Container(),
          elevation: 0.0,
        ),
        body:Center(
          child: MaterialButton(
            child: Icon(
                Icons.navigate_before,
                color:Colors.white,
                size:64.0
            ),
            onPressed: ()=>Navigator.of(context).pop(),
          ),
        )
    );
  }
}