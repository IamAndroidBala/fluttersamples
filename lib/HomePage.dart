
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_samples/ContainerPage.dart';
import 'package:flutter_samples/ScaffoldPage.dart';
import 'package:flutter_samples/TextFieldPage.dart';
import 'package:flutter_samples/TextPage.dart';
import 'package:flutter_samples/Utils.dart';

class HomePage extends StatelessWidget {

  final appTitle = 'Flutter Widgets';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );

  }

}

class MyHomePage extends StatelessWidget {

  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text(title)),

      body: Center(

        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[

          Text('Android Bala',
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                letterSpacing: 2,
                fontStyle: FontStyle.normal
            ),
          ),

          SizedBox(height: 10),

          Text('palanis.bala@gmail.com',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                letterSpacing: 2,
                fontStyle: FontStyle.normal
            ),
          )

        ],
      ),

      ),

      drawer: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),

          children: <Widget>[

            UserAccountsDrawerHeader(

              accountName: Text("Android Bala", style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
              ),),

              accountEmail: Text("palanis.bala@gmail.com",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),),

              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Bala.jpg'),
              ),

            ),

            ListTile(
              title: Text('Scaffold',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),
              ),
              onTap: () {
                _gotoPage(context, 1);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Container',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                _gotoPage(context, 2);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Row & Column',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                _gotoPage(context, 3);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Text',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                _gotoPage(context, 4);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('TextField',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                _gotoPage(context, 5);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Buttons',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Stack',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Form',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('AlertDialog',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Icon',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Image',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Card',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Tabbar',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('List',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('GridView',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Toast',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Check Box',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Progress Bar',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Snack Bar',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('ToolTip',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Slider',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Switch',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Chart',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Navigationbar',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Theme',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Table',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Calendar',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

            ListTile(
              title: Text('Animation',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: Colors.lightBlue,
              hoverColor: Colors.orange,
            ),

          ],
        ),
      ),
    );
  }

  void _gotoPage(BuildContext context , int _position){

    Navigator.pop(context);

    if(_position == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ScaffoldPage()));
    } else if(_position == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ContainerPage()));
    } else  if(_position == 3) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => TextPage()));
    } else  if(_position == 4) {
      Navigator.push(context, _createRoute());
    } else if(_position == 5) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => TextFieldPage()));
    }

  }

  Route _createRoute() {

    return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => TextPage(), transitionsBuilder: (context, animation, secondaryAnimation, child) {

        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(position: animation.drive(tween), child: child);

      },
    );
  }

}
