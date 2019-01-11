### Container容器组件的使用
#### Alignment属性
> Alignment属性针对的是Container内child的对齐方式，也就是容器子内容的对齐方式，并不是容器本身的对齐方式。

``` dart
child:Container(
	child:new Text('Hello World',style: TextStyle(fontSize: 40.0),),
	alignment: Alignment.center,
),
```
> Alignment属性它的对齐方式还有如下几种：
> - bottomCenter:下部居中对齐。
> - botomLeft: 下部左对齐。
> - bottomRight：下部右对齐。
> - center：纵横双向居中对齐。
> - centerLeft：纵向居中横向居左对齐。
> - centerRight：纵向居中横向居右对齐。
> - topLeft：顶部左侧对齐。
> - topCenter：顶部居中对齐。
> - topRight： 顶部居左对齐。

#### 设置宽、高和颜色属性

```dart
child:Container(
  child:new Text('Hello JSPang',style: TextStyle(fontSize: 40.0),),
  alignment: Alignment.center,
  width:500.0,
  height:400.0,
  color: Colors.lightBlue,
),
```

#### 完整代码

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			title: 'Text Widget',
			home: Scaffold(
				body: Center()
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
```

#### padding属性
> padding的属性就是一个内边距，它和你使用的前端技术CSS里的padding表现形式一样，指的是Container边缘和child内容的距离。

```dart
child:Container(
  child:new Text('Hello JSPang',style: TextStyle(fontSize: 40.0),),
  alignment: Alignment.topLeft,
  width:500.0,
  height:400.0,
  color: Colors.lightBlue,
  padding:const EdgeInsets.all(10.0),
),
```
> - EdgeInsets.all(),设置Container的内边距是10，左右上下全部为10
> - EdgeInsets.fromLTRB(value1,value2,value3,value4),LTRB分别代表左、上、右、下。

#### margin属性
> margin是外边距

```dart
child:Container(
  child:new Text('Hello JSPang',style: TextStyle(fontSize: 40.0),),
  alignment: Alignment.topLeft,
  width:500.0,
  height:400.0,
  color: Colors.lightBlue,
  padding:const EdgeInsets.fromLTRB(10.0,30.0,0.0,0.0),
  margin: const EdgeInsets.all(10.0),
),
```

> - EdgeInsets.fromLTRB分别设置不同的外边距

#### decoration属性
> decoration是 container 的修饰器，主要的功能是设置背景和边框。
> 需要注意的是如果你设置了decoration，就不要再设置color属性了，因为这样会冲突

```dart
child:Container(
  child:new Text('Hello JSPang',style: TextStyle(fontSize: 40.0),),
  alignment: Alignment.topLeft,
  width:500.0,
  height:400.0,
  padding:const EdgeInsets.fromLTRB(10.0,30.0,0.0,0.0),
  margin: const EdgeInsets.all(10.0),
  decoration:new BoxDecoration(
    gradient:const LinearGradient(
      colors:[Colors.lightBlue,Colors.greenAccent,Colors.purple]
    )
  ),
),
```

#### border属性
> 添加边框

```dart
child:Container(
  child:new Text('Hello JSPang',style: TextStyle(fontSize: 40.0),),
  alignment: Alignment.topLeft,
  width:500.0,
  height:400.0,
  padding:const EdgeInsets.fromLTRB(10.0,30.0,0.0,0.0),
  margin: const EdgeInsets.all(10.0),
  decoration:new BoxDecoration(
    gradient:const LinearGradient(
      colors:[Colors.lightBlue,Colors.greenAccent,Colors.purple]
    ),
    border:Border.all(width:2.0,color:Colors.red)
  ),
),
```

#### 完整代码

```dart
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
            child: new Text('Hello World', style: TextStyle(fontSize: 40.0),),
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
            ///color: Colors.lightBlue,
            padding: const EdgeInsets.fromLTRB(10.0, 100.0, 0.0, 0.0),
            margin: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]
              ),
              border: Border.all(width: 5.0, color: Colors.red)
            ),
          ),
        ),
      ),
    );
  }
}
```