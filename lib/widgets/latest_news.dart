import 'package:flutter/material.dart';
import 'package:train/custom/clipped_image.dart';
import 'package:train/models/latest.dart';
import 'package:train/pages/news_view_page2.dart';
import 'package:train/styles/text_styles.dart';

class LatestNewsPage extends StatelessWidget {
  final LatestNews latest;
  final bool compactMode;
  const LatestNewsPage({Key key, this.latest, this.compactMode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.black.withOpacity(0.3),
      onTap: () {
        Navigator.push(
          context,
          // MaterialPageRoute(
          //   builder: (context) => NewsViewPage(latest: latest),
          // ),
          MaterialPageRoute(
            builder: (context) => SecondViewPage(latest: latest),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: ClippedImage(
              imagePath: latest.imagePath,
              compactMode: compactMode,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  latest.oldPrice,
                  style: headingOneText,
                ),
                SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      latest.storeName,
                      style: viewAllTextStyle,
                    ),
                    SizedBox(width: 5),
                    Text(
                      latest.monthYear,
                      style: viewAllText,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
