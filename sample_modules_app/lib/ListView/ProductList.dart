import 'package:flutter/material.dart';

class ProductList extends StatelessWidget{

  final List<String> products;
  ProductList(this.products);
  

  Widget build(BuildContext context) {
    return _myListView(context);
  }

  Widget _myListView(BuildContext context) {

    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text(products[index]),
        );
      },
    );

  }
}