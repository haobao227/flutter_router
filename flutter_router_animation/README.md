import 'package:flutter/material.dart';
import 'custome_router.dart';
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
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder:(BuildContext context) {
                  return Scaffold(
                      backgroundColor: Colors.pink,
                      appBar: AppBar(
                        title: Text('SecondPage', style: TextStyle(fontSize: 36.0, color: Colors.white)),
                        centerTitle: true,
                        elevation: 0.0,
                        backgroundColor: Colors.pink,
                      ),
                    body: Center(
                      child: MaterialButton(
                        child: Icon(
                          Icons.navigate_before,
                          color: Colors.white,
                          size: 64.0,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  );
                }
            ));
          },
        ),
      ),
    );
  }
}
