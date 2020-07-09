import 'package:flutter/material.dart';
import 'package:train/custom/slider_info.dart';
import 'package:train/models/latest.dart';
import 'package:train/models/shops.dart';

class LandingSlider extends StatefulWidget {
  final double heightFactor;
  LandingSlider({this.heightFactor});
  final PageController _pageController = PageController(initialPage: 0);
  @override
  _LandingSliderState createState() => _LandingSliderState();
}

class _LandingSliderState extends State<LandingSlider>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _slideAnimation;
  Animation _fadeAnimation;
  int currentIndex = 0;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _slideAnimation = TweenSequence(
      [
        TweenSequenceItem<Offset>(
          weight: 10,
          tween: Tween(
            begin: Offset(0, 0),
            end: Offset(0, 1),
          ),
        ),
        TweenSequenceItem<Offset>(
          weight: 90,
          tween: Tween(
            begin: Offset(0, 1),
            end: Offset(0, 0),
          ),
        ),
      ],
    ).animate(
      _controller,
    );

    _fadeAnimation = TweenSequence(
      [
        TweenSequenceItem<double>(weight: 10, tween: Tween(begin: 1, end: 0)),
        TweenSequenceItem<double>(weight: 90, tween: Tween(begin: 0, end: 1)),
      ],
    ).animate(
      _controller,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  onLandingTap(currentIndex) {
    setState(() {
      print(currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: latestNewsList.length,
      controller: widget._pageController,
      pageSnapping: true,
      onPageChanged: (index) {
        setState(() {
          currentIndex = index;
          _controller.reset();
          _controller.forward();
        });
      },
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              latestNewsList[index].imagePath,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                backgroundBlendMode: BlendMode.darken,
              ),
            ),
            FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 1.4 - widget.heightFactor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SliderInfo(
                  shopList: latestNewsList[currentIndex],
                  slideAnimation: _slideAnimation,
                  fadeAnimation: _fadeAnimation,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
