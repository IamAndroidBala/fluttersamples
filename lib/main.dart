import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_samples/HomePage.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }

}

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen>{

  bool _isLoggedIn =  false;

  @override
  void initState() {

    super.initState();

    Timer(
        Duration(seconds: 2),
            () => goToNextPage()
    );


  }

  void goToNextPage() {

      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome to"),
            Text(
              "Flutter",
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );

  }

}