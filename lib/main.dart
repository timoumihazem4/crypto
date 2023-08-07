import 'package:crypto/backend/providers/colors.dart';
import 'package:crypto/backend/providers/prices_provider.dart';
import 'package:crypto/signup.dart';

import 'package:crypto/widjet_tree.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  late final appState = Prices();
  late final appState1 = Colr();

  await appState.init();
  await appState1.init();

  debugPrint(appState.balance.toString());
  debugPrint(appState.bnbnbr.toString());
  debugPrint(appState.ethnbr.toString());
  debugPrint(appState.btcnbr.toString());

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Prices()),
        ChangeNotifierProvider(create: (_) => Colr())
      ],
      child: MyApp(),
    ),
  );
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
        backgroundColor: Provider.of<Colr>(context).bkgcol == 0
            ? Color.fromARGB(198, 204, 231, 236)
            : Color.fromARGB(102, 182, 193, 187),
        title: Text(
          'CRYPTO',
          style: TextStyle(
              color: Provider.of<Colr>(context).bkgcol == 0
                  ? Color.fromARGB(197, 47, 207, 235)
                  : Color.fromARGB(255, 56, 61, 58),
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: Provider.of<Colr>(context).bkgcol == 0
            ? const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Color.fromARGB(198, 204, 231, 236),
                    Color.fromARGB(197, 169, 221, 233),
                    Color.fromARGB(197, 107, 215, 234),
                    Color.fromARGB(197, 47, 207, 235),
                  ]))
            : const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Color.fromARGB(102, 182, 193, 187),
                    Color.fromARGB(153, 176, 194, 185),
                    Color.fromARGB(204, 125, 142, 133),
                    Color.fromARGB(255, 56, 61, 58),
                  ])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'LOGIN/REGISTER',
                style: TextStyle(
                    color: Provider.of<Colr>(context).bkgcol == 0
                        ? Color.fromARGB(197, 47, 207, 235)
                        : Color.fromARGB(255, 56, 61, 58),
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image.network(
                'https://recovermycryptowallet.com/wp-content/uploads/2023/03/bitcoin-transparent.png'
                // 'https://www.freepnglogos.com/uploads/bitcoin-png/bitcoin-multiply-btc-pick-and-profit-5.png'
                ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const WidgetTree()),
                );
              },
              style: ElevatedButton.styleFrom(
                  //backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: Provider.of<Colr>(context).bkgcol == 0
                      ? Color.fromARGB(197, 47, 207, 235)
                      : Color.fromARGB(255, 56, 61, 58),
                  minimumSize: const Size(200, 80)),
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
              style: ElevatedButton.styleFrom(
                  //backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: Provider.of<Colr>(context).bkgcol == 0
                      ? Color.fromARGB(197, 47, 207, 235)
                      : Color.fromARGB(255, 56, 61, 58),
                  minimumSize: const Size(200, 80)),
              child: const Text(
                'SIGNUP',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:shared_preferences/shared_preferences.dart';
