import 'package:flutter/material.dart';

class ExameDetailPage extends StatelessWidget {
  ExameDetailPage({this.details});

  final details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Diag4Me')
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(details[0]),
              Text(details[1]),
              Text(details[2]),
          ],
        ),
      ),
    );
  }
}