import 'package:flutter/material.dart';
import 'package:train/models/shops.dart';
import 'package:train/styles/text_styles.dart';

class SliderInfo extends StatelessWidget {
  final Shops shopList;
  final Animation slideAnimation, fadeAnimation;
  const SliderInfo(
      {Key key, this.shopList, this.slideAnimation, this.fadeAnimation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: SlideTransition(
        position: slideAnimation,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: Text(
                    shopList.storeName,
                    style: newGameNameText,
                    softWrap: true,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                shopList.oldPrice,
                style: newGameNameTextStyle,
              ),
              SizedBox(height: 15),
              Text(
                shopList.newPrice,
                style: newGameTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
