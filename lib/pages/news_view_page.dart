import 'package:flutter/material.dart';
import 'package:train/custom/clipped_image.dart';
import 'package:train/models/latest.dart';
import 'package:train/styles/text_styles.dart';

class NewsViewPage extends StatefulWidget {
  final LatestNews latest;
  NewsViewPage({Key key, this.latest}) : super(key: key);

  @override
  _NewsViewPageState createState() => _NewsViewPageState();
}

class _NewsViewPageState extends State<NewsViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            widget.latest.imagePath,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Container(
            color: Colors.black.withOpacity(0.8),
          ),
          Positioned(
            top: 40,
            right: 10,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Text(
                  widget.latest.oldPrice,
                  style: nameBigStyle,
                ),
                SizedBox(height: 20),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      widget.latest.newPrice,
                      style: descriptionStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Gallery".toUpperCase(),
                  style: descriptionBoldStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ClippedImage(
                            compactMode: true,
                            imagePath: latestNewsList[index].imagePath);
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 12);
                      },
                      itemCount: latestNewsList.length),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
