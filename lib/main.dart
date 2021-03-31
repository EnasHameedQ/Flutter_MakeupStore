import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:makeupstore/UI/Login.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:makeupstore/UI/CreatAccount.dart';
import 'package:makeupstore/UI/SittingsShoplist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration:5,
            splash: Icons.home,
            nextScreen: CreateAccount(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.amberAccent[100],



        )
    );
  }
}
