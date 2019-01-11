### 垂直布局Column组件
#### 主轴和副轴的辨识
> 在设置对齐方式的时候你会发现右mainAxisAlignment属性，意思就是主轴对齐方式，那什么是主轴，什么又是幅轴那。
> - main轴：如果你用column组件，那垂直就是主轴，如果你用Row组件，那水平就是主轴。
> - cross轴：cross轴我们称为幅轴，是和主轴垂直的方向。比如Row组件，那垂直就是幅轴，Column组件的幅轴就是水平方向的。
> - CrossAxisAlignment.start：居左对齐。
> - CrossAxisAlignment.end：居右对齐。
> - CrossAxisAlignment.center：居中对齐。

#### 水平方向相对屏幕居中
> 让文字相对于水平方向居中，我们如何处理？其实只要加入Center组件就可以轻松解决。

```dart
body:Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  	Center(child:Text('I am JSPang')),
    Center(child:Text('my website is jspang.com')),
    Center(child:Text('I love coding'))
  ],
}
```

#### Expanded属性的使用
> 其实在学习水平布局的时候我们对Expanded有了深刻的理解，它就是灵活布局。比如我们想让中间区域变大，而头部区域和底部根据文字所占空间进行显示。

```dart
body:Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Center(child:Text('I am JSPang')),
    Expanded(child:Center(child:Text('my website is jspang.com'))),
    Center(child:Text('I love coding'))
  ],
)
```