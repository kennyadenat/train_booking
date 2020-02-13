import 'package:flutter/material.dart';
import 'package:train/models/shops.dart';
import 'package:train/pages/option_page.dart';
import 'package:train/styles/text_styles.dart';

class ShopCard extends StatelessWidget {
  final Shops shops;

  const ShopCard({Key key, this.shops}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => OptionPage()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Text(
              shops.discount,
              style: shopCardDiscount,
            ),
          ),
        ),
      ),
    );
  }
}
