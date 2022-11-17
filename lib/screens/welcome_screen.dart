// ignore_for_file: unused_import, unnecessary_import,  prefer_const_constructors, file_names, use_key_in_widget_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'login/login_screen.dart';

class WelcomScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelcomScreenState();
  }
}

class WelcomScreenState extends State<WelcomScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  final spinkit = Padding(
    padding: EdgeInsets.only(top: 100),
    child: SpinKitThreeBounce(
      color: Colors.white,
      size: 50.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA6ED4B),
      appBar: AppBar(
          //backgroundColor: Colors.black,
          ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              alignment: Alignment.center,
              child: const Text(
                'Ai Là Triệu Phú',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.blue),
              ),
            ),
            //Image.asset('images/ailatrieuphu.jpg', fit: BoxFit.cover),
            spinkit,
          ],
        ),
      ),
    );
  }
}
