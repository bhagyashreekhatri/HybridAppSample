import 'package:flutter/material.dart';
import './SideDrawerPage.dart';

import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main(){
 // MapView.setApiKey("AIzaSyDhdvA1lAmvk1QIjZJOBur2Xc08YZKydYo");
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = "Sample App";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: appTitle,
      home: SideDrawerPage(title: appTitle),
    );
  }
}