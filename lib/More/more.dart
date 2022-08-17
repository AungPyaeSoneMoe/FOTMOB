// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class More extends StatefulWidget {
  More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('More'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        // ignore: prefer_const_literals_to_create_immutables
        children: [
          InkWell(
            onTap: () {},
            child: ListTile(
              leading:
                  CircleAvatar(child: Icon(Icons.swap_horizontal_circle_sharp)),
              title: Text("Transfer Center"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.tv_sharp),
              ),
              title: Text('Tv schedules\nMyanmar'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              // ignore: prefer_const_constructors
              title: Text('Settings'),
            ),
          ),
        ],
      ),
    );
  }
}
