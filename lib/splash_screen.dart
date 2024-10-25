import 'dart:async';
import 'package:flutter/material.dart';
import 'package:restaurant_app/main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/foodlogo.png',
              width: 150.0,
              height: 150.0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Restorant App', //Nama app / restorant
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'ARE YOU HUNGRY?', //slogan
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 25.0,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  letterSpacing: 5.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
