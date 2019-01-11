### HelloWorld整体代码(demo)

``` dart 
import 'package:flutter/material.dart';
//主函数（入口函数），下面我会简单说说Dart的函数
void main() =>runApp(MyApp());
// 声明MyApp类
class MyApp extends StatelessWidget{
  //重写build方法
  @override
  Widget build(BuildContext context){
    //返回一个Material风格的组件
   return MaterialApp(
      title:'Welcome to Flutteraa',
      home:Scaffold(
        //创建一个Bar，并添加文本
        appBar:AppBar(
          title:Text('Welcome to Flutter'),
        ),
        //在主体的中间区域，添加一个hello world 的文本
        body:Center(
          child:Text('Hello World'),
        ),
      ),
    );
  }
}
```

### Dart语法Function函数
> Dart是面向对象的语言，即使是函数也是对象，并且属于Function类型的对象。这意味着函数变量或作为参数传递给其他函数。当然你也可以像JavaScipt一样，调用一个函数。
> 
> 比如我们写的Hello World中的第二行，就是一个函数。

``` dart
void main() => runApp(MyAPP());
```
> 因为这个函数体只有一行代码，所以可以直接用 `=>`来省略 `{}`，只有函数体只有一行时，才可以使用，否则请使用大括号。
> 
> ps:学习Dart语法时你要记住一条，Dart里一切皆对象，包括数字和函数.......,没对象的程序员小哥哥可要抓紧学习了，程序中自有颜如玉的时代到了）

### StatefulWidget和StatelessWidget
> - StatefulWidget ： 具有可变状态的窗口部件，也就是你在使用应用的时候就可以随时变化，比如我们常见的进度条，随着进度不断变化。
> - StatelessWidget：不可变状态窗口部件，也就是你在使用时不可以改变，比如固定的文字（写上后就在那里了，死也不会变了）。