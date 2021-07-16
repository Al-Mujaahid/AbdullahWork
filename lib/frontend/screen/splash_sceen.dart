

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void navigateToNextPage() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
  }

  @override
  void initState() { 
    super.initState();
    navigateToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Loading..."),
      ),
    );
  }
}