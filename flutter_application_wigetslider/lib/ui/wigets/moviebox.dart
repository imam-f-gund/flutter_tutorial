import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_wigetslider/ui/styles/style.dart';

class MovieBox extends StatelessWidget {
  // const MovieBox({super.key});

  final String url;
  MovieBox(this.url);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: parentStyle.clone()..background.image(url: url, fit: BoxFit.cover),
    );
  }
}
