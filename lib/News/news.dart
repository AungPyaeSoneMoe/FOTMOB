import 'package:flutter/material.dart';

class News extends StatefulWidget {
  News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('News'),
          bottom: TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                child: Text('For you', style: TextStyle(fontSize: 12)),
              ),
              Tab(
                child: Text('Latest', style: TextStyle(fontSize: 12)),
              ),
              Tab(
                child: Text(
                  'Transfers',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Tab(
                child: Text('Leagues', style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('H')),
            Center(child: Text('e')),
            Center(child: Text('e')),
            Center(child: Text('o')),
          ],
        ),
      ),
    );
  }
}
