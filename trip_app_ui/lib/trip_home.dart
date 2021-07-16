import 'package:flutter/material.dart';

class TripHomeScreen extends StatefulWidget {
  TripHomeScreen({Key key}) : super(key: key);

  @override
  _TripHomeScreenState createState() => _TripHomeScreenState();
}

class _TripHomeScreenState extends State<TripHomeScreen> {
  PageController _pageController;

  void _onScroll() {
    print('ss');
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(),
          makePage(),
          makePage(),
        ],
      ),
    );
  }

  Widget makePage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assetName'),

        ),),
      color: Colors.blue,
    );
  }
}
