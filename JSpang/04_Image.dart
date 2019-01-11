import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Container',
      home: Scaffold(
        body: Center(
          child: Container(
            child:new Image.network('http://jspang.com/static//myimg/blogtouxiang.jpg',
            ///fit:BoxFit.contain,
            ///color: Colors.greenAccent,
            ///colorBlendMode: BlendMode.modulate,
            repeat: ImageRepeat.repeatY,),
            width: 300.0,
            height: 200.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}