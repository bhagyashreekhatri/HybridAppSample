import 'package:flutter/material.dart';
import './ProductList.dart';

class ListViewPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListViewPageState();
  }

}

class _ListViewPageState extends State<ListViewPage>{

  List<String> _productArray = ['JANUARY','FEBUARY','MARCH','APRIL','MAY','JUNE','JULY','AUGUST','SEPTEMBER','OCTOBER','NOVEMBER','DECEMBER'];

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ProductList(_productArray)
    );
  }
}
