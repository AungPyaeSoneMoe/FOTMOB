import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fotmob/Home_screen/Home.dart';

class League extends StatefulWidget {
  League({Key? key}) : super(key: key);

  @override
  State<League> createState() => _AllCompetitionsState();
}

class _AllCompetitionsState extends State<League> {
  TextEditingController controller = TextEditingController();
  bool tap = false;
  bool tap1 = false;
  Widget card() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, left: 15),
            alignment: Alignment.centerLeft,
            child: const Text(
              'All competitions',
              style: TextStyle(fontSize: 20),
            ),
          ),
          // for (int i = 0; i < list.length; i++)
          ///List[0]
          InkWell(
            onTap: () {
              tap = !tap;
              setState(() {});
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 12),
              child: Row(
                children: [
                  const Icon(Icons.sports_soccer),
                  const SizedBox(
                    width: 13,
                  ),
                  SizedBox(
                    width: 235,
                    child: Text('${list[0]}'),
                  ),
                  if (!tap)
                    const Icon(Icons.expand_more)
                  else
                    const Icon(Icons.expand_less)
                ],
              ),
            ),
          ),

          ///List[0]
          ///Bottom
          if (tap) ...[
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const Icon(Icons.sports_soccer),
                    const SizedBox(
                      width: 13,
                    ),
                    const SizedBox(
                      width: 165,
                      child: Text(
                        'Champions League',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "FOLLOW",
                          style: TextStyle(color: Colors.green[600]),
                        )),
                  ],
                ),
              ),
            ),
          ],

          ///list[0][Bottom]
          ///list[1]
          InkWell(
            onTap: () {
              tap1 = !tap1;
              setState(() {});
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 12, bottom: 12),
              child: Row(
                children: [
                  const Icon(Icons.sports_soccer),
                  const SizedBox(
                    width: 13,
                  ),
                  SizedBox(
                    width: 235,
                    child: Text('${list[1]}'),
                  ),
                  if (!tap1)
                    const Icon(Icons.expand_more)
                  else
                    const Icon(Icons.expand_less)
                ],
              ),
            ),
          ),

          ///List[1]
          ///Bottom
          if (tap1) ...[
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const Icon(Icons.sports_soccer),
                    const SizedBox(
                      width: 13,
                    ),
                    const SizedBox(
                      width: 165,
                      child: Text(
                        'Europa League',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "FOLLOW",
                        style: TextStyle(color: Colors.green[600]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],

          ///List[1][Bottom]
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('League'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.grey.shade300,
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: controller,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white10,
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Find Leagues',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: card(),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> list = [
  'a',
  'b',
  'c',
  'd',
  'e',
  'f',
  'g',
  'h',
  'i',
  'j',
  'k',
  'l',
  'm',
  'n',
  'o',
  'p',
  'q',
  'r',
  's',
  't',
  'u',
  'v',
  'w',
  'x',
  'y',
  'z'
];
