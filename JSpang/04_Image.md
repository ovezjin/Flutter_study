### 图片组件的使用
#### 加入图片的几种方式
> - Image.asset: 加载资源图片，就是加载项目资源目录中的图片,加入图片后会增大打包的包体体积，用的是相对路径。
> - Image.network: 网络资源图片，意思就是你需要加入一段http://xxxx.xxx的这样的网络路径地址。
> - Image.file: 加载本地图片，就是加载本地文件中的图片，这个是一个绝对路径，跟包体无关。
> - Image.memory: 加载Uint8List资源图片。

#### fit属性的设置
> fit属性可以控制图片的拉伸和挤压，这些都是根据图片的父级容器来的，我们先来看看这些属性（建议此部分组好看视频理解）。
> - BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。
> - BoxFit.contain:全图显示，显示原比例，可能会有空隙。
> - BoxFit.cover：显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）。
> - BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸，可能裁切。
> - BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉伸，可能裁切。
> - BoxFit.scaleDown：效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。

```dart
child:new Image.network(
  'http://jspang.com/static/myimg/blogtouxiang.jpg',
   fit:BoxFit.contain,
),
```

#### 图片的混合模式
> 图片混合模式（colorBlendMode）和color属性配合使用，能让图片改变颜色，里边的模式非常的多，产生的效果也是非常丰富的。在这里作几个简单的例子，让大家看一下效果，剩下的留给小伙伴自己探索。
> - color：是要混合的颜色，如果你只设置color是没有意义的。
> - colorBlendMode:是混合模式，相当于我们如何混合。

```dart
child:new Image.network(
  'http://jspang.com/static/myimg/blogtouxiang.jpg',
    color: Colors.greenAccent,
    colorBlendMode: BlendMode.darken,
),
```

#### repeat图片重复
> - ImageRepeat.repeat : 横向和纵向都进行重复，直到铺满整个画布。
> - ImageRepeat.repeatX: 横向重复，纵向不重复。
> - ImageRepeat.repeatY：纵向重复，横向不重复。

```dart
child:new Image.network(
  'http://jspang.com/static/myimg/blogtouxiang.jpg',
   repeat: ImageRepeat.repeat,
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
```