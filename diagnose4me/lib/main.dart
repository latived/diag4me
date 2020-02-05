import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class LoginSignUpPage extends StatefulWidget {
  LoginSignUpPage({Key key})
    : super(key: key);

  @override
  _LoginSignUpPageState createState() => _LoginSignUpPageState();

}

class _LoginSignUpPageState extends State<LoginSignUpPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        child: Text('Hello!')
      ),
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

