## Responsiveness

A Flutter package to deal with the major screen's resolutions out there.

This package manages to adapt your UI to a responsive format defined by you/your designer on a project

## Example

Imagine your screen's dimensions got a resolution of 1920x1080, you'll need to adapt all your design screen to this resolution. You can with this package, just simply pass the height and width argument on **designHeight** and **designWidth** parameter.

```dart
double responsiveHeight(BuildContext context, double value,
    {double designHeight}) {
  final double _designHeight = designHeight ?? 736;
  final double _height = MediaQuery.of(context).size.height;
  final double _magicNumber = value / _designHeight;
  return _magicNumber * _height;
}

double responsiveWidth(BuildContext context, double value,
    {double designWidth}) {
  final double _designWidth = designWidth ?? 414;
  final double _width = MediaQuery.of(context).size.width;
  final double _magicNumber = value / _designWidth;
  return _magicNumber * _width;
}
```
Don't worry if you don't pass any argument, I've got your back with a default value for both height and width.

## What about fontSize?
We've got that too!

```dart
double responsiveFont(BuildContext context, double value, {double dividedBy}) {
  final double _magic = MediaQuery.of(context).size.width / (dividedBy ?? 400);
  return _magic * value;
}
```
Why using 400? Well, 400 was a number that we found when you devide your device's width by it, it returns almost 1.0. It's not exactly 1.0 but get close. That's the reason.

Don't worry, if you want to change it, just change.

Hope you enjoy!