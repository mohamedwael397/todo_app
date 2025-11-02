import 'package:flutter/material.dart';

void main() {
  runApp(todo_app());
}

class todo_app extends StatelessWidget {
  const todo_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text("ToDO App"))),
    );
  }
}


// Native Splash Screen
// دول ال5 خطوات اللي الباشمهندس كان ملخصهم

// 1- add package flutter_native_splash in pubspec.yaml part of dependencies

// 2- design splash android and ios screens
//    download splash images (icon) in assets folder say splash_ios_android_11.png

// 3- design splash android 12 screen
//    # in figma create frame w:640 h:640 and r:320 and center the icon in this frame
//    # create new frame w:960 h:960 and center the last frame in this frame
//    # final export the frame as png and name it splash_ios_android_12.png

// 4- create file in root app flutter_native_splash.yaml
//    # write in this code in this file
//    // flutter_native_splash:
//    //   color: "#5F33E1"
//    //   image: assets/icons/splash_ios_android_11.png
//    //   android_12:
//    //     image: assets/icons/splash_android_12.png
//    //     color: "#5F33E1"

// 5- run => dart run flutter_native_splash:create --path=flutter_native_splash.yaml