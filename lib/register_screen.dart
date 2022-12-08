// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, use_key_in_widget_constructors, unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  TextEditingController TxtEmail = TextEditingController();
  TextEditingController TxtPass = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng ký Tài Khoản'),
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
                controller: TxtEmail,
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
                controller: TxtPass,
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
                  final newuser = _auth.createUserWithEmailAndPassword(
                      email: TxtEmail.text, password: TxtEmail.text);
                  if (newuser != null) {
                    Navigator.pop(context, 'Đăng Ký thành công!');
                  } else {
                    final snackBar =
                        SnackBar(content: Text('Tài khoản này không hợp lệ'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                } catch (e) {
                  final snackBar = SnackBar(content: Text('có lỗi xảy ra!'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              // ignore: sort_child_properties_last
              child: const Text(
                'Đăng Ký',
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
