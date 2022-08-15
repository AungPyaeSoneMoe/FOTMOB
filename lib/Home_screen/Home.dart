import 'package:flutter/material.dart';
import 'package:fotmob/Following/follow.dart';
import 'package:fotmob/Leagues/League.dart';
import 'package:fotmob/Matches/Matche.dart';
import 'package:fotmob/More/more.dart';
import 'package:fotmob/News/news.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _screen = [const Matches(), News(), League(), Follow(), More()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: NavigatorDrawer(),
    );
  }
}

class NavigatorDrawer extends StatelessWidget {
  const NavigatorDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red,
      shape: const RoundedRectangleBorder(
        // ignore: unnecessary_const
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.5,
      child: SingleChildScrollView(
        child: Column(
          children: [
            header(context),
            item(),
          ],
        ),
      ),
    );
  }
}

Widget header(BuildContext context) => Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    );
Widget item() => Column(
      children: [
        ListTile(
          leading: Icon(Icons.emoji_events_outlined),
          title: Text('Matches'),
        ),
        ListTile(
          leading: Icon(Icons.emoji_events_outlined),
          title: Text('Matches'),
        ),
        ListTile(
          leading: Icon(Icons.emoji_events_outlined),
          title: Text('Matches'),
        ),
        ListTile(
          leading: Icon(Icons.emoji_events_outlined),
          title: Text('Matches'),
        ),
        ListTile(
          leading: Icon(Icons.emoji_events_outlined),
          title: Text('Matches'),
        ),
      ],
    );
