import 'package:flutter/material.dart';
import 'package:fotmob/Following/follow.dart';
import 'package:fotmob/Leagues/League.dart';
import 'package:fotmob/More/more.dart';
import 'package:fotmob/News/news.dart';

import 'Europaleague.dart';
import 'package:starlight_search_bar/starlight_search_bar.dart';

class Matches extends StatefulWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  bool tap = false;
  Widget item(name) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Column(
          children: [
            Container(
              height: 50,
              child: Row(
                children: [
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(Icons.sports_soccer),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Europa()));
                    },
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        name,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      splashRadius: 15,
                      onPressed: () {
                        tap = !tap;
                        setState(() {});
                      },
                      icon: const Icon(Icons.expand_more),
                    ),
                  )
                ],
              ),
            ),
            if (!tap) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      const Icon(Icons.circle),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: 100,
                          child: const Text(
                            'Man United ',
                            maxLines: 2,
                          )),
                      const Icon(Icons.man),
                      const Text('4 - 0'),
                      const Icon(Icons.man),
                      Container(
                          alignment: Alignment.center,
                          width: 100,
                          child: const Text(
                            'Liverpool',
                            maxLines: 2,
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      const Icon(Icons.circle),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: 100,
                          child: const Text(
                            'Man United ',
                            maxLines: 2,
                          )),
                      const Icon(Icons.man),
                      const Text('4 - 0'),
                      const Icon(Icons.man),
                      Container(
                          alignment: Alignment.center,
                          width: 100,
                          child: const Text(
                            'Liverpool',
                            maxLines: 2,
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      const Icon(Icons.circle),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: 100,
                          child: const Text(
                            'Man United ',
                            maxLines: 2,
                          )),
                      const Icon(Icons.man),
                      const Text('4 - 0'),
                      const Icon(Icons.man),
                      Container(
                          alignment: Alignment.center,
                          width: 100,
                          child: const Text(
                            'Liverpool',
                            maxLines: 2,
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      const Icon(Icons.circle),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: 100,
                          child: const Text(
                            'Man United ',
                            maxLines: 2,
                          )),
                      const Icon(Icons.man),
                      const Text('4 - 0'),
                      const Icon(Icons.man),
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        child: const Text(
                          'Liverpool',
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const NDrawer(),
        drawerScrimColor: Colors.grey,
        drawerEdgeDragWidth: 220,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: const Text('FOTMAB'),
          actions: [
            IconButton(
                splashRadius: 15,
                onPressed: () {},
                icon: const Icon(Icons.timelapse)),
            IconButton(
                splashRadius: 15,
                onPressed: () {},
                icon: const Icon(Icons.date_range_outlined)),
            IconButton(
                splashRadius: 15,
                onPressed: () {
                  StarlightSearchBar.searchBar(
                      searchFieldLabel: 'Search for teams,matches,player',
                      context: context,
                      data: []);
                },
                icon: const Icon(Icons.search)),
            IconButton(
                splashRadius: 15,
                onPressed: () {},
                icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              item('Australia - Australia Cup - Round of 16'),
              item('Chapions League Qualification'),
              item('FA Cup'),
              item('Laliga'),
              item('Span'),
              item('Euora'),
              item('Carlin'),
              item('France'),
            ],
          ),
        ),
      ),
    );
  }
}

class NDrawer extends StatelessWidget {
  const NDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        // ignore: unnecessary_const
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.5,
      child: SingleChildScrollView(
        child: Column(
          children: [
            header(context),
            draweritems(context),
          ],
        ),
      ),
    );
  }

  Widget header(BuildContext context) => Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      );
  Widget draweritems(BuildContext context) => Container(
        padding: const EdgeInsets.all(15),
        child: Wrap(
          runSpacing: 16,

          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListTile(
                leading: const Icon(Icons.newspaper),
                title: const Text('News'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => News()),
                    ),
                  );
                }),
            ListTile(
                leading: Icon(Icons.emoji_events_outlined),
                title: Text('Leagues'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => League()),
                    ),
                  );
                }),
            ListTile(
                leading: Icon(Icons.star_outline_sharp),
                title: Text('Following'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => Follow()),
                    ),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.menu),
                title: const Text('More'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => More()),
                    ),
                  );
                }),
          ],
        ),
      );
}
