import 'package:flutter/material.dart';

class Europa extends StatefulWidget {
  Europa({Key? key}) : super(key: key);

  @override
  State<Europa> createState() => _EuropaState();
}

class _EuropaState extends State<Europa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Europa League"),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notification_add_outlined)),
          // OutlinedButton(
          //   style: OutlinedButton.styleFrom(maximumSize: ,
          //     backgroundColor: Colors.grey[300],
          //     shape: new RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(16.0),
          //     ),
          //   ),
          //   onPressed: () {},
          //   child: Text(
          //     "FOLLOW",
          //     style: TextStyle(color: Colors.green[600]),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.white,
                side: BorderSide(width: 1),
                elevation: 0,
                minimumSize: Size(100, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text('Follow'),
            ),
          )
        ],
      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
