import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			title: '垂直布局',
			home: Scaffold(
				appBar: new AppBar(
					title: new Text('垂直方向布局') 
				),
				body: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					crossAxisAlignment: CrossAxisAlignment.center,
					children: <Widget>[
					Text('I am Flutter'),
					Text('I created by Google'),
					//Expanded(child:Text('I created by Google')),
					Text('I love coding')
					],
				)
			),
		);
	}
}
