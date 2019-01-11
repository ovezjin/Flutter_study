import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			title:'Text Widget',
			home:Scaffold(
				body:Center(
					child:Text(
						'Hello World! 回望远方是那归不了的故乡，俯瞰脚下是这难捱的他乡。',
						textAlign: TextAlign.center,//文本对齐方式，可选center, left, right, start, end
						maxLines: 1,//设置最多显示的行数
						overflow: TextOverflow.ellipsis,//overflow属性是用来设置文本溢出时，如何处理
						style: TextStyle(
							fontSize: 25.0,
							color: Color.fromARGB(255, 255, 150, 150),
							decoration: TextDecoration.underline,
							decorationStyle: TextDecorationStyle.solid,
						),
					),//text
				),//Center
			),//Scaffold
		);//MaterialApp
	}
}