import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Alerts View'),
      ),
      body: Center(

        child: Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.topLeft,
              child: FlatButton.icon(onPressed: () => _showAlert(context), icon: Icon(Icons.add_a_photo), label: Text('Alert 1')),

            ),
            new Align(
              alignment: Alignment.center,
              child: FlatButton.icon(onPressed: () => _showDialog(context), icon: Icon(Icons.add_a_photo), label: Text('Alert 1')),
            )
          ],
        )

      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _showAlert(context),
          icon: Icon(Icons.add_a_photo),
          label: Text('Alert 1')
      )
    );

  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text("hi"),
        ));
  }

  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

