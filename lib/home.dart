import 'package:crypto/edu.dart';
import 'package:crypto/main.dart';
import 'package:crypto/news.dart';
import 'package:crypto/prstk.dart';
import 'package:flutter/material.dart';
//import 'package:test2/desc.dart';
//import 'package:test2/main.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Color backgroundColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
            child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: ListTile(
                title: Text(
                  'MAPP',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 25.0),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.account_balance),
              title: Text(
                'ACCOUNT',
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.favorite),
              title: Text(
                'FAVORITE',
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.search),
              title: Text(
                'SEARCH',
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings),
              title: Text(
                'SETTINGS',
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const loginpage()),
                );
              },
              leading: const Icon(Icons.logout),
              title: Text(
                'LOGOUT',
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ),
          ],
        )),
      ),
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
              iconSize: 50,
              onPressed: () {
                setState(() {
                  if (backgroundColor == Colors.green) {
                    backgroundColor = Colors.grey[900]!;
                  } else {
                    backgroundColor = Colors.green;
                  }
                });
              },
              icon: Icon(Icons.candlestick_chart)),
        ],
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'HOME',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 140.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => edu()),
                );
              },
              icon: Icon(Icons.book), //icon data for elevated button
              label: Text(
                'EDUCATIONAL RESSOURCES',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: Color.fromARGB(255, 32, 2, 69),
                  minimumSize: Size(400, 80)),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => prstk()),
                );
              },
              icon: Icon(Icons.save), //icon data for elevated button
              label: Text(
                'PRESTRIHING',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: Color.fromARGB(255, 32, 2, 69),
                  minimumSize: Size(400, 80)),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const news()),
                );
              },
              child: const Text(
                'NEWS',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: Color.fromARGB(255, 32, 2, 69),
                  minimumSize: Size(400, 80)),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const news()),
                );
              },
              child: const Text(
                'NOTIFICATIONS',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: Color.fromARGB(255, 32, 2, 69),
                  minimumSize: Size(400, 80)),
            ),
          ],
        ),
      ),
    );
  }
}
