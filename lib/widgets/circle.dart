import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double size;
  final List<Color> colors;
  // ignore: prefer_typing_uninitialized_variables
  final begin;
  // ignore: prefer_typing_uninitialized_variables
  final end;

  Circle(
      {Key? key,
      required this.size,
      required this.colors,
      required this.begin,
      required this.end})
      : assert(size != null && size > 0),
        assert(colors != null && colors.length >= 2),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.size,
        height: this.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: this.colors, begin: this.begin, end: this.end),
        ));
  }
}
