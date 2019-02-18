import 'package:flutter/material.dart';
import 'other_page.dart';

class HomePage extends StatefulWidget {

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ZZZUM'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('ZZZUM'),
                accountEmail: Text('example@126.com'),
                currentAccountPicture: GestureDetector(
                  onTap: () => print('current user'),
                  child: CircleAvatar(
                      backgroundImage: NetworkImage('https://upload.jianshu.io/users/upload_avatars/7700793/dbcf94ba-9e63-4fcf-aa77-361644dd5a87?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240')
                  ),
                ),
                otherAccountsPictures: <Widget>[
                  GestureDetector(
                    onTap: () => print('other user'),
                    child: CircleAvatar(
                        backgroundImage: NetworkImage('https://upload.jianshu.io/users/upload_avatars/10878817/240ab127-e41b-496b-80d6-fc6c0c99f291?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240')
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print('other user'),
                    child: CircleAvatar(
                        backgroundImage: NetworkImage('https://upload.jianshu.io/users/upload_avatars/8346438/e3e45f12-b3c2-45a1-95ac-a608fa3b8960?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240')
                    ),
                  ),
                ],
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: ExactAssetImage('images/lake.jpg'),
                  ),
                ),
              ),
              ListTile(
                  title: Text('First Page'),
                  trailing: Icon(Icons.arrow_upward),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => OtherPage('First Page')));
                  }
              ),
              ListTile(
                  title: Text('Second Page'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => OtherPage('Second Page')));
                  }
              ),
              ListTile(
                  title: Text('Second Page'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/a');
                  }
              ),
              Divider(),
              ListTile(
                title: Text('Close'),
                trailing: Icon(Icons.cancel),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          )
      ),
      body: Center(
        child: Text('HomePage', style: TextStyle(fontSize: 35.0),),
      ),
    );
  }
}