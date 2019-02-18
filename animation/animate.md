### 动画
#### 渐隐渐现动画

>FadeTransition:渐隐渐现过渡效果，主要设置opactiy（透明度）属性，值是0.0-1.0。
> - animate :动画的样式，一般使用动画曲线组件（CurvedAnimation）。
> - curve: 设置动画的节奏，也就是常说的曲线，Flutter准备了很多节奏，通过改变动画取消可以做出很多不同的效果。
> - transitionDuration：设置动画持续的时间，建议再1和2之间。

```dart
return FadeTransition(
  scale:Tween(begin:0.0,end:1.0).animate(CurvedAnimation(
    parent:animation1,
    curve: Curves.fastOutSlowIn
    )),
    child:child
);
```
#### 缩放路由动画

> SacleTransition: 缩放效果，主要设置scale
```dart
return ScaleTransition(
  scale:Tween(begin:0.0,end:1.0).animate(CurvedAnimation(
    parent:animation1,
    curve: Curves.fastOutSlowIn
    )),
    child:child
);
```

#### 旋转加缩放路由

> 旋转+缩放的思路是在一个路由动画里的child属性里再加入一个动画，让两个动画同时执行。

> RotationTransition: 旋转效果，主要设置turns
```dart
return RotationTransition(
  turns:Tween(begin:0.0,end:1.0)
  .animate(CurvedAnimation(
    parent: animation1,
    curve: Curves.fastOutSlowIn
  )),
  child:ScaleTransition(
    scale:Tween(begin: 0.0,end:1.0)
    .animate(CurvedAnimation(
        parent: animation1,
        curve:Curves.fastOutSlowIn
    )),
    child: child,
  )
);
```

#### 左右滑动路由动画

> 用的做多的还是左右滑动路由动画，其实实现起来也是非常简单，直接使用SlideTransition

> SlideTransition: 左右滑动效果，设置position
```dart
return SlideTransition(
  position: Tween<Offset>(
    begin: Offset(-1.0, 0.0),
    end:Offset(0.0, 0.0)
  )
  .animate(CurvedAnimation(
    parent: animation1,
    curve: Curves.fastOutSlowIn
  )),
  child: child,
);
```