import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Jin Flutter Demo',
      home: Scaffold(
        appBar: new AppBar(title: new Text('ListView Widget')),
        body: new ListView(
          children: <Widget>[
            /*new ListTile(
              leading: new Icon(Icons.perm_camera_mic),
              title: new Text('perm_camera_mic'),
            ),
            new ListTile(
              leading: new Icon(Icons.add_call),
              title: new Text('add_call'),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text('access_time'),
            ),*/
            new Image.network('http://jspang.com/static/upload/20181213/pvA-e9vkrNiXVFUm6xXMO9zf.jpg'),
            new Image.network('http://jspang.com/static/upload/20181212/RPW7VSlP0xG1UcsMdwPs9MeR.jpg'),
            new Image.network('http://jspang.com/static/upload/20181126/FB4kjZaGt48a4HzYakHWQpU7.png'),
            new Image.network('http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg'),
          ],
        ),
      ),
    );
  }
}