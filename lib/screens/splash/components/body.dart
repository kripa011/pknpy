import 'package:flutter/material.dart';

import '../splash_content.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Pick & Pay, Let's shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text": "We help the people, stay home with us",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "Welcome to Pick & Pay, Let's shop!",
      "image": "assets/images/splash_3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text "],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }

}

