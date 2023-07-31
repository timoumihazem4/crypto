import 'package:crypto/account.dart';
import 'package:crypto/backend/providers/colors.dart';
import 'package:crypto/edu.dart';
import 'package:crypto/fav.dart';
import 'package:crypto/main.dart';
import 'package:crypto/NewsScreen.dart';
import 'package:crypto/notifications.dart';
import 'package:crypto/payment.dart';
import 'package:crypto/pricesScreen.dart';
import 'package:crypto/search.dart';
import 'package:crypto/settings.dart';
import 'package:crypto/staking.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:test2/desc.dart';
//import 'package:test2/main.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
            child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: ListTile(
                title: Text(
                  'MAPP',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 25.0),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Payment()),
                );
              },
              leading: const Icon(Icons.account_box),
              title: const Text(
                'ACCOUNT',
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Account()),
                );
              },
              leading: const Icon(Icons.account_circle),
              title: const Text(
                'VIRTUAL ACCOUNT',
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Fav()),
                );
              },
              leading: const Icon(Icons.favorite),
              title: const Text(
                'FAVORITE',
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Search()),
                );
              },
              leading: const Icon(Icons.search),
              title: const Text(
                'SEARCH',
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
              leading: const Icon(Icons.settings),
              title: const Text(
                'SETTINGS',
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const loginpage()),
                );
              },
              leading: const Icon(Icons.logout),
              title: const Text(
                'LOGOUT',
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ),
          ],
        )),
      ),
      backgroundColor: Provider.of<Colr>(context).bkgcol,
      appBar: AppBar(
        actions: [
          IconButton(
              iconSize: 50,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              },
              icon: const Icon(Icons.candlestick_chart)),
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
            const SizedBox(
              height: 140.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const edu()),
                );
              },
              icon: const Icon(Icons.book), //icon data for elevated button
              label: const Text(
                'EDUCATIONAL RESSOURCES',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: const Color.fromARGB(255, 32, 2, 69),
                  minimumSize: const Size(400, 80)),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Staking()),
                );
              },
              icon: const Icon(
                  Icons.stacked_bar_chart), //icon data for elevated button
              label: const Text(
                'STAKING',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: const Color.fromARGB(255, 32, 2, 69),
                  minimumSize: const Size(400, 80)),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PricesScreen()),
                );
              },
              icon: const Icon(
                  Icons.money_rounded), //icon data for elevated button
              label: const Text(
                'PRICES',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: const Color.fromARGB(255, 32, 2, 69),
                  minimumSize: const Size(400, 80)),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewsScreen()),
                );
              },
              icon: const Icon(Icons.newspaper), //icon data for elevated button
              label: const Text(
                'NEWS',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: const Color.fromARGB(255, 32, 2, 69),
                  minimumSize: const Size(400, 80)),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notifications()),
                );
              },
              icon: const Icon(
                  Icons.notifications), //icon data for elevated button
              label: const Text(
                'NOTIFICATIONS',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: const Color.fromARGB(255, 32, 2, 69),
                  minimumSize: const Size(400, 80)),
            ),
          ],
        ),
      ),
    );
  }
}
