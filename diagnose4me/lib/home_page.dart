import 'package:diagnose4me/authentication.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({this.userId, this.auth, this.logoutCallback});

  final String userId;
  final BaseAuth auth;
  final VoidCallback logoutCallback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diag4Me'),
      ),
      body: Container(
        child: Text('Hello!'),
      ),
    );
  }
}
