import 'package:flutter/material.dart';
import 'package:train/models/latest.dart';
import 'package:train/styles/text_styles.dart';

class DetailsImage extends StatelessWidget {
  final double height;
  final LatestNews latest;

  const DetailsImage({Key key, this.height, this.latest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          latest.imagePath,
          height: height * 0.5,
          width: double.infinity,
          fit: BoxFit.fitHeight,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            backgroundBlendMode: BlendMode.darken,
          ),
        ),
      ],
    );
  }
}
