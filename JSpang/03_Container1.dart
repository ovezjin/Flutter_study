import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			title: 'Text Widget',
			home: Scaffold(
				body: Center(
					child: Container(
						child: new Text('Hello World', style: TextStyle(fontsize:40.0),),
						alignment: Alignment.center,
						width: 500.0,
						height: 400.0,
						color: Colors.lightBlue,
					),
				),
			),
		);
	}
}
