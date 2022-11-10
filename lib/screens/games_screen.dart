// ignore_for_file: unused_import, file_names, prefer_const_constructors, override_on_non_overriding_member, annotate_overrides, unused_local_variable, prefer_const_literals_to_create_immutables, sort_child_properties_last, duplicate_ignore

import 'package:flutter/material.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return GamesScreenState();
  }
}

class GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('N'),
                  ),
                  title: Text(
                    'Người chơi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Text(
                'Score:0',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.deepPurpleAccent])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                child: Image.asset(
                  'images/ailatrieuphu.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'Câu 1: Flutter là gì???',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
              const SizedBox(height: 50),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                //padding: EdgeInsets.all(20),
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Câu A:',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()
                      //primary: isselectef ? Color(Colors.orange):Colors.White,
                      ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                //padding: EdgeInsets.all(20),
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Câu B:',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()
                      //primary: isselectef ? Color(Colors.orange):Colors.White,
                      ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                //padding: EdgeInsets.all(20),
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Câu C:',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()
                      //primary: isselectef ? Color(Colors.orange):Colors.White,
                      ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                //padding: EdgeInsets.all(20),
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Câu D:',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()
                      //primary: isselectef ? Color(Colors.orange):Colors.White,
                      ),
                ),
              ),
            ],
          ),
        ));
  }
}
