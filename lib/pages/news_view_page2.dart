import 'package:flutter/material.dart';
import 'package:train/models/latest.dart';
import 'package:train/widgets/details_view.dart';

class SecondViewPage extends StatefulWidget {
  final LatestNews latest;

  SecondViewPage({Key key, this.latest}) : super(key: key);

  @override
  _SecondViewPageState createState() => _SecondViewPageState();
}

class _SecondViewPageState extends State<SecondViewPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DetailsImage(height: screenHeight, latest: widget.latest)
          ],
        ),
      ),
    );
  }
}
