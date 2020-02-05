import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class LoginSignUpPage extends StatefulWidget {
  LoginSignUpPage({Key key})
    : super(key: key);

  @override
  _LoginSignUpPageState createState() => _LoginSignUpPageState();

}

class _LoginSignUpPageState extends State<LoginSignUpPage> {

  var _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Stack(
        children: <Widget>[
          //showForm(),
          showCircularProgress(),
        ],
      ),
    );
  }

  Widget showCircularProgress() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginSignUpPage(),
    );
  }
}

