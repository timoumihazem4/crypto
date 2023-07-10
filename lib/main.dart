import 'package:crypto/login.dart';
import 'package:crypto/signup.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 183, 77)),
        useMaterial3: true,
      ),
      home: const loginpage(),
    );
  }
}

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(158, 158, 158, 1),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'CRYPTO',
          style: TextStyle(
              color: Color.fromARGB(255, 86, 6, 120),
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green[500],
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'LOGIN/REGISTER',
                style: TextStyle(
                    color: Color.fromARGB(255, 86, 6, 120),
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image.network(
                'https://www.freepnglogos.com/uploads/bitcoin-png/bitcoin-multiply-btc-pick-and-profit-5.png'),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: Color.fromARGB(255, 32, 2, 69),
                  minimumSize: Size(200, 80)),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => signup()),
                );
              },
              child: const Text(
                'SIGNUP',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: Color.fromARGB(255, 32, 2, 69),
                  minimumSize: Size(200, 80)),
            ),
          ],
        ),
      ),
    );
  }
}
