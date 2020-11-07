
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_samples/Utils.dart';

class HomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body: Center(child: Text('My Page!')),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Flutter Samples'),
              decoration: BoxDecoration(
                color: Colors.lightBlue
              ),
            ),

            ListTile(
              title: Text('Textfield'),
              onTap: ()=> _goToPage(1),
            ),

            ListTile(
              title: Text('Sample'),
              onTap: ()=> _goToPage(2),
            )
          ],
        ),
      ),
    );

  }

  void _goToPage(int position){

    if(position ==1) {
      Utils.showMessage('One');
    } else if(position == 2){
      Utils.showMessage('Two');
    }

    Navigator.pop(context);

  }

}