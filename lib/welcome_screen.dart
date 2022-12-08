// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, sort_child_properties_last

import 'dart:ui';

import 'register_screen.dart';
import '/signin_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelcomeScreenState();
  }
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Yako',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SigninScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Đăng Nhập',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterScreen(),
                  ),
                ).then((value) {
                  if (value != null) {
                    final snakaBar = SnackBar(content: Text(value));
                    ScaffoldMessenger.of(context).showSnackBar(snakaBar);
                  }
                });
              },
              child: const Text(
                'Đăng ký',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey)),
            )
          ],
        ),
      ),
    );
  }
}
