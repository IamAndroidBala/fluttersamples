
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: new AppBar(
        title: new Text('Text Sample',
        style: TextStyle(
            fontStyle: FontStyle.normal
        ),),
        centerTitle: true,
      ),

      body: Center(
        child: new Text('This is Text widget',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 20,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.underline,
            decorationColor: Colors.black54,
            decorationThickness: 2,
            decorationStyle: TextDecorationStyle.dotted,
            letterSpacing: 2,
            fontStyle: FontStyle.normal
          ),
        ),
      )

    );

  }

}