import 'package:flutter/material.dart';
import 'package:train/custom/content_heading.dart';
import 'package:train/custom/landing_slider.dart';
import 'package:train/models/latest.dart';
import 'package:train/models/shops.dart';
import 'package:train/widgets/latest_news.dart';
import 'package:train/widgets/shop_card.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _heightFactorAnimation;
  double collapsedHeightFactor = 0.98;
  double expandedHeightFactor = 0.55;
  bool isAnimationCompleted = false;
  double screenHeight = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _heightFactorAnimation = Tween<double>(
            begin: collapsedHeightFactor, end: expandedHeightFactor * 0.25)
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  onBottomPartTap() {
    setState(() {
      if (isAnimationCompleted) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
      isAnimationCompleted = !isAnimationCompleted;
    });
  }

  Widget bodyWidget() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        FractionallySizedBox(
          alignment: Alignment.topCenter,
          heightFactor: _heightFactorAnimation.value,
          child: Container(
            child: LandingSlider(heightFactor: _heightFactorAnimation.value),
          ),
        ),
        GestureDetector(
          onTap: onBottomPartTap,
          onVerticalDragUpdate: _handleVerticalUpdate,
          onVerticalDragEnd: _handleVerticalEnd,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 1.09 - _heightFactorAnimation.value,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                child: Scaffold(
                  backgroundColor: Colors.white,
                  body: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ContentHeadingWidget(
                          heading: "Latest News",
                        ),
                        Expanded(
                          flex: 2,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                for (var i = 0; i < shopList.length; i++)
                                  ShopCard(shops: shopList[i]),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return LatestNewsPage(
                                latest: latestNewsList[index],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: latestNewsList.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _handleVerticalUpdate(DragUpdateDetails updateDetails) {
    double fractionDragged = updateDetails.primaryDelta / screenHeight;
    _controller.value = _controller.value - fractionDragged;
  }

  _handleVerticalEnd(DragEndDetails dragEndDetails) {
    if (_controller.value >= 0.5) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, widget) {
          return bodyWidget();
        },
      ),
    );
  }
}
