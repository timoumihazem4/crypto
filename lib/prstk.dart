import 'package:flutter/material.dart';

class prstk extends StatefulWidget {
  const prstk({super.key});

  @override
  State<prstk> createState() => _prstkState();
}

class _prstkState extends State<prstk> {
  Color backgroundColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
              iconSize: 50,
              onPressed: () {
                setState(() {
                  if (backgroundColor == Colors.green) {
                    backgroundColor = Colors.amber[700]!;
                  } else {
                    backgroundColor = Colors.green;
                  }
                });
              },
              icon: Icon(
                Icons.star,
                color: Colors.amber[700],
              )),
          //tooltip: 'Activate Premium Mode',
        ],
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'PRESTRIKING',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
    );
  }
}
