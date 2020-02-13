import 'package:flutter/material.dart';

class ExameDetailPage extends StatelessWidget {
  ExameDetailPage({this.details});

  final details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Diag4Me')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(details[0], style: TextStyle(fontSize: 16.0)),
            new Text(details[1], style: TextStyle(fontSize: 16.0)),
            new Text(details[2], style: TextStyle(fontSize: 16.0)),
            showPrimaryButton()
          ],
        ),
      ),
    );
  }

  Widget showPrimaryButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
      child: SizedBox(
        height: 40.0,
        child: RaisedButton(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Colors.blue,
            child: new Text(
              'Help me understand it',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              print('Chat! Chat!');
              //Navigator.push(context, MaterialPageRoute(
              //    builder: (context) => ExameDetailPage(details: details,)
              //));
            }),
      ),
    );
  }
}
