### 水平布局Row的使用
#### 不灵水平布局
> 从字面上就可以理解到，不灵活就是根据Row子元素的大小，进行布局。如果子元素不足，它会留有空隙，如果子元素超出，它会警告。比如现在我们要制作三个按钮，并让三个按钮同时在一排。我们写下了如下代码，但你会发现效果并不理想。

```dart
body:new Row(
  children: <Widget>[
    new RaisedButton(
      onPressed: (){},
      color:Colors.redAccent,
      child:new Text('红色按钮')
    ),
    new RaisedButton(
      onPressed: (){},
      color:Colors.orangeAccent,
      child: new Text('黄色按钮'),
    ),  
    new RaisedButton(
      onPressed: (){},
      color:Colors.pinkAccent,
      child:new Text('粉色按钮')
    )
  ],
)
```

#### 灵活水平布局
> 解决上面有空隙的问题，可以使用 Expanded来进行解决，也就是我们说的灵活布局。我们在按钮的外边加入Expanded就可以

```dart
body:new Row(
  children: <Widget>[
    Expanded(child:new RaisedButton(
      onPressed: (){},
      color:Colors.redAccent,
      child:new Text('红色按钮')
    ),),
    Expanded(child:new RaisedButton(
      onPressed: (){},
      color:Colors.orangeAccent,
      child: new Text('黄色按钮'),
    ),),  
    Expanded(child:new RaisedButton(
      onPressed: (){},
      color:Colors.pinkAccent,
      child:new Text('粉色按钮')
    ))
  ],
)
```

### 灵活和不灵活的混用
> 如果这时候想让中间的按钮大，而两边的按钮保持真实大小，就可以不灵活和灵活模式进行混用，实现效果。

```dart
body:new Row(
  children: <Widget>[
    new RaisedButton(
      onPressed: (){},
      color:Colors.redAccent,
      child:new Text('红色按钮')
    ),
    Expanded(child:new RaisedButton(
      onPressed: (){},
      color:Colors.orangeAccent,
      child: new Text('黄色按钮'),
    ),),  
    new RaisedButton(
      onPressed: (){},
      color:Colors.pinkAccent,
      child:new Text('粉色按钮')
    )
  ],
)
```
```