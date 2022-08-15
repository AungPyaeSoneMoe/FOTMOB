import 'package:flutter/material.dart';

class Follow extends StatefulWidget {
  Follow({Key? key}) : super(key: key);

  @override
  State<Follow> createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Text('Following'),
          bottom: TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                child: Text('Teams'),
              ),
              Tab(
                child: Text('Players'),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text('Hello')),
          Center(child: Text('MinglarBar')),
        ]),
      ),
    );
  }
}
