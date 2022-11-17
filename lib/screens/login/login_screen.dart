// ignore_for_file: unused_import, duplicate_import, unnecessary_import, prefer_const_constructors, duplicate_ignore, file_names, non_constant_identifier_names, unused_local_variable, sort_child_properties_last, use_key_in_widget_constructors, unused_field, no_leading_underscores_for_local_identifiers, empty_catches

import 'dart:async';

import 'package:doan_flutter/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../forgot_password_screen.dart';
import '../menu_tabs/menu_tabs_screen.dart';
import '../register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool remember = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    Widget imgSection = Image.asset(
      'images/ailatrieuphu.jpg',
      //width: 100,
      //height: 300,
      fit: BoxFit.cover,
    );
    Widget ctnSection = Container(
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
    );

    Widget sizeboxSection1 = const SizedBox(height: 10);
    Widget sizeboxSection2 = const SizedBox(height: 40);
    Widget usernameSection = TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.emailAddress,
      validator: (val) => val!.isEmpty ? 'Tên đăng nhập không hợp lệ' : null,
      decoration: InputDecoration(
        hintText: 'Email',
        prefixIcon: const Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Icon(
            Icons.account_box,
            color: Colors.lightBlueAccent,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        border: OutlineInputBorder(
          //borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          gapPadding: 10,
        ),
      ),
    );

    Widget passwordSection = TextFormField(
      controller: txtPass,
      obscureText: _obscureText,
      validator: (val) => val!.length < 6 ? 'Required at least 6 chars' : null,
      decoration: InputDecoration(
        hintText: 'Mật khẩu',
        prefixIcon: const Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Icon(
            Icons.lock,
            color: Colors.lightBlueAccent,
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        border: OutlineInputBorder(
          //borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          gapPadding: 10,
        ),
      ),
    );

    Widget dangnhapSection = Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Material(
        child: MaterialButton(
          onPressed: () async {
            try {
              final _user = _auth.signInWithEmailAndPassword(
                  email: txtEmail.text, password: txtPass.text);
              _auth.authStateChanges().listen(
                (event) {
                  if (event != null) {
                    txtEmail.clear();
                    txtPass.clear();
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      'home',
                      (route) => false,
                    );
                  } else {
                    final snackBar = SnackBar(
                      content: Text('Email hoặc mật khẩu không đúng'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
              );
            } catch (e) {
              final snackBar = SnackBar(
                content: Text('Lỗi kết nối đến server'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          shape: RoundedRectangleBorder(
              //borderRadius: BorderRadius.circular(30),
              ),
          color: Colors.lightBlueAccent,
          height: 60,
          child: const Text(
            'Đăng nhập',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );

    Widget quenmatkhauSection = Row(
      children: [
        /* Checkbox(
            value: remember,
            activeColor: Colors.blue,
            onChanged: (value) {
              setState(() {
                remember = value!;
              });
            }),
        const Text('Ghi nhớ'), */
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForgotPasswordScreen(),
                ));
          },
          // ignore: prefer_const_constructors
          child: Text(
            'Quên mật khẩu?',
            style: TextStyle(
                decoration: TextDecoration.underline, color: Colors.blue),
          ),
        ),
      ],
    );

    Widget dangkySection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Bạn chưa có tài khoản? ',
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterScreen(),
                ));
          },
          child: const Text(
            'Đăng ký ngay ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );

    Widget dangnhapGoogleSection = Material(
      //color: Colors.blue,
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
            ),
            Container(
              color: Colors.white,
              child: Image.asset(
                'images/google.jpg',
              ),
              width: 40.0,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Đăng nhập với Google',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );

    Widget dangnhapFacebookSection = Material(
      //color: Colors.blue,
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
            ),
            Container(
              color: Colors.white,
              child: Image.asset(
                'images/facebook.jpg',
              ),
              width: 40.0,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Đăng nhập với Facebook',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ctnSection,
            imgSection,
            sizeboxSection1,
            usernameSection,
            sizeboxSection1,
            passwordSection,
            quenmatkhauSection,
            dangnhapSection,
            dangkySection,
            sizeboxSection2,
            dangnhapGoogleSection,
            sizeboxSection1,
            dangnhapFacebookSection,
          ],
        ),
      ),
    );
  }
}
