import 'package:flutter/material.dart';

class ClippedImage extends StatelessWidget {
  final String imagePath;
  final bool compactMode;
  const ClippedImage({Key key, this.imagePath, this.compactMode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      child: Image.asset(
        imagePath,
        height: 100,
        width: 100,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
