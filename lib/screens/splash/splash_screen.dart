import 'package:flutter/material.dart';
import 'package:pknpy/screens/splash/components/body.dart';
import 'package:pknpy/size_config.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
