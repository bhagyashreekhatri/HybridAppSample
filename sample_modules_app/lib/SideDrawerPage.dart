import 'package:flutter/material.dart';
import 'package:sample_modules_app/ListView/ListViewPage.dart';
import 'package:sample_modules_app/TabBar/TabBarPage.dart';
import 'package:sample_modules_app/Alerts/AlertPage.dart';
import 'package:sample_modules_app/GoogleMap/GoogleMapPage.dart';

class SideDrawerPage extends StatelessWidget {
  final String title;

  SideDrawerPage({Key key, this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        child: Column(
        //  padding: EdgeInsets.zero,
          children: <Widget>[
            AppBar(
              title: Text('Choose Menu'),
            ),
            ListTile(
              title: Text('List View'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewPage()),
                );
               // Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Tab Bar'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TabBarPage()),
                );
              },
            ),
            ListTile(
              title: Text('Alerts'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlertPage()),
                );
              },
            ),
            ListTile(
              title: Text('Google Map'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GoogleMapPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}