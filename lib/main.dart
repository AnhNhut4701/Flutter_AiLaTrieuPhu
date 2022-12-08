// ignore_for_file: use_key_in_widget_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'welcome_screen.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(YakoApp());
}

class YakoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yako App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'Welcome',
      routes: {
        'Welcome': (context) => WelcomeScreen(),
        'home': (context) => HomeScreen(),
      },
    );
  }
}
