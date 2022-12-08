// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, no_leading_underscores_for_local_identifiers, unnecessary_null_comparison, sort_child_properties_last

import 'package:firebase_auth/firebase_auth.dart';

import '/home_screen.dart';

import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SigninScreenState();
  }
}

class SigninScreenState extends State<SigninScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng nhập'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Yako App',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 6),
              child: TextField(
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6, bottom: 12),
              child: TextField(
                controller: txtPass,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  final _user = _auth.signInWithEmailAndPassword(
                      email: txtEmail.text, password: txtPass.text);
                  _auth.authStateChanges().listen((event) {
                    if (_user != null) {
                      txtEmail.clear();
                      txtPass.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    } else {
                      final snackBar = SnackBar(
                          content: Text('Email hoặc mật khẩu không đúng'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  });
                } catch (e) {
                  final snackBar =
                      SnackBar(content: Text('Lỗi kết nối với server'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: const Text(
                'Đăng Nhập',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
