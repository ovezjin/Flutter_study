import 'package:flutter/material.dart';

void main() => runApp(MyApp(
    items: new List<String>.generate(1000, (i) => "Item $i")
)
);

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}):super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Jin Flutter Demo',
      home: Scaffold(
        appBar: new AppBar(title: new Text('Listview Widget')),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (contenxt, index){
            return new ListTile(
                title: new Text('${items[index]}')
            );
          },
        ),
      ),
    );
  }
}