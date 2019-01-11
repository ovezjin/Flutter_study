import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title:Text('重庆市南岸区崇文路', style: TextStyle(fontWeight:FontWeight.w500),),
            subtitle:Text('重庆邮电大学:CQUPT'),
            leading: new Icon(Icons.school,color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title:Text('重庆市南岸区崇文路', style: TextStyle(fontWeight:FontWeight.w500),),
            subtitle:Text('重庆邮电大学:CQUPT'),
            leading: new Icon(Icons.school,color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title:Text('重庆市南岸区崇文路', style: TextStyle(fontWeight:FontWeight.w500),),
            subtitle:Text('重庆邮电大学:CQUPT'),
            leading: new Icon(Icons.school,color: Colors.lightBlue,),
          )
        ],
      ),
    );
    return MaterialApp(

      title: 'Card Widget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('卡片布局'),
        ),
        body: Center(
          child: card
        )
      ),
    );
  }
}