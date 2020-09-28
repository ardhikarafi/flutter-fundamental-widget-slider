import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:widget_slider/ui/styles/styles.dart';

class MovieBox extends StatelessWidget {
  final String geturl;

  // const MovieBox({this.url}) : super(key: key);
  MovieBox(this.geturl);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: parentStyle.clone()..background.image(url: geturl),
    );
  }
}
