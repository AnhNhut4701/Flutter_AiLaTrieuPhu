// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class RanksScreen extends StatefulWidget {
  const RanksScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return RanksScreenState();
  }
}

class RanksScreenState extends State<RanksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text(
              'Bảng xếp hạng',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2)),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
            decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2)),
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(5),
              children: [
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('N'),
                    ),
                    title: Text(
                      'Nguoi choi 1',
                      style: TextStyle(
                          color: Colors.red[400],
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    trailing: Text(
                      '1100',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('N'),
                    ),
                    title: Text(
                      'Nguoi choi 2',
                      style: TextStyle(
                          color: Colors.red[400],
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    trailing: Text(
                      '1000',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('N'),
                    ),
                    title: Text(
                      'Nguoi choi 3',
                      style: TextStyle(
                          color: Colors.red[400],
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    trailing: Text(
                      '900',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('N'),
                    ),
                    title: Text(
                      'Nguoi choi 4',
                      style: TextStyle(
                          color: Colors.red[400],
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    trailing: Text(
                      '700',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('N'),
                    ),
                    title: Text(
                      'Nguoi choi 5',
                      style: TextStyle(
                          color: Colors.red[400],
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    trailing: Text(
                      '500',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Chơi Ngay',
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Thoát',
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
