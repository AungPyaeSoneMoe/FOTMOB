import 'package:flutter/material.dart';

class News extends StatefulWidget {
  News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  List list = [
    'https://th.bing.com/th/id/OIP.OZ3Khm9vWqeX4PrE4OIhGAHaHa?pid=ImgDet&rs=1'
  ];

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
            ListView.builder(
              itemBuilder: ((context, index) {
                // ignore: avoid_unnecessary_containers
                return Card(
                  child: Image.network(
                    'https://th.bing.com/th/id/R.4650d36f344fee91eec4e7875b3649c1?rik=%2bjPC21FZ9ren8A&riu=http%3a%2f%2fwww.mobygames.com%2fimages%2fcovers%2fl%2f429371-fifa-18-xbox-one-front-cover.jpg&ehk=5QvjIqgy6J%2b9RH7sL2og43PQnFxFEDn85lXU6kZ0Tz8%3d&risl=&pid=ImgRaw&r=0',
                  ),
                );
              }),
            ),
            ListView.builder(
              itemBuilder: ((context, index) {
                return ListTile(
                    title: Image.network(
                        'https://th.bing.com/th/id/R.4650d36f344fee91eec4e7875b3649c1?rik=%2bjPC21FZ9ren8A&riu=http%3a%2f%2fwww.mobygames.com%2fimages%2fcovers%2fl%2f429371-fifa-18-xbox-one-front-cover.jpg&ehk=5QvjIqgy6J%2b9RH7sL2og43PQnFxFEDn85lXU6kZ0Tz8%3d&risl=&pid=ImgRaw&r=0'));
              }),
            ),
            ListView.builder(
              itemBuilder: ((context, index) {
                return Card(
                  child: Image.network(
                    'https://th.bing.com/th/id/R.4650d36f344fee91eec4e7875b3649c1?rik=%2bjPC21FZ9ren8A&riu=http%3a%2f%2fwww.mobygames.com%2fimages%2fcovers%2fl%2f429371-fifa-18-xbox-one-front-cover.jpg&ehk=5QvjIqgy6J%2b9RH7sL2og43PQnFxFEDn85lXU6kZ0Tz8%3d&risl=&pid=ImgRaw&r=0',
                  ),
                );
              }),
            ),
            ListView.builder(
              itemBuilder: ((context, index) {
                return Card(
                  child: Image.network(
                    'https://th.bing.com/th/id/R.4650d36f344fee91eec4e7875b3649c1?rik=%2bjPC21FZ9ren8A&riu=http%3a%2f%2fwww.mobygames.com%2fimages%2fcovers%2fl%2f429371-fifa-18-xbox-one-front-cover.jpg&ehk=5QvjIqgy6J%2b9RH7sL2og43PQnFxFEDn85lXU6kZ0Tz8%3d&risl=&pid=ImgRaw&r=0',
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
