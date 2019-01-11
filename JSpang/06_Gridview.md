### GridView网格列表组件
> 列表组件已经学会了，那还有一种常用的列表，叫做网格列表。网格列表经常用来显示多张图片，比如我们经常使用的手机里的相册功能，大部分形式都是网格列表。
#### 简单例子演示
> 我们先不做一个相册的应用，而是使用文字，作一个最简单的网格列表，目的是先熟悉一下GridView的基本语法，代码如下，视频中会进行详细讲解：

```dart
body:GridView.count(
  padding:const EdgeInsets.all(20.0),
  crossAxisSpacing: 10.0,
  crossAxisCount: 3,
  children: <Widget>[
    const Text('I am Jspang'),
    const Text('I love Web'),
    const Text('jspang.com'),
    const Text('我喜欢玩游戏'),
    const Text('我喜欢看书'),
    const Text('我喜欢吃火锅')
  ],
)
```

> - padding:表示内边距，这个小伙伴们应该很熟悉。
> - crossAxisSpacing:网格间的空当，相当于每个网格之间的间距
> - crossAxisCount:网格的列数，相当于一行放置的网格数量。

#### 图片网格列表
> 我们利用图片来作一些网格列表。当然我们用一种更原生的方法，现在官方已经不鼓励使用这种方法了，但是为了你碰到时，不至于不知道怎么回事，所以我们作一下这种形式，但主要是为了作图片布局。
> -childAspectRatio://宽高比
> - crossAxisSpacing: //网格横轴间距
> - mainAxisSpacing: //网格纵轴间距

```dart
body:GridView.count(
  padding:const EdgeInsets.all(20.0),
  crossAxisSpacing: 10.0,
  crossAxisCount: 3,
  children: <Widget>[
    new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
    new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
    new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
    new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
    new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
    new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
  ],
)
```