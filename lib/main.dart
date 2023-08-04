import 'package:crypto/backend/providers/colors.dart';
import 'package:crypto/backend/providers/prices_provider.dart';

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
        color: Provider.of<Colr>(context).bkgcol == 0
            ? Colors.indigo[400]
            : Provider.of<Colr>(context).bkgcol == 1
                ? Colors.black
                : Colors.blueGrey,
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
                  foregroundColor: const Color.fromARGB(255, 32, 2, 69),
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
                  MaterialPageRoute(builder: (context) => const WidgetTree()),
                );
              },
              style: ElevatedButton.styleFrom(
                  //backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                  foregroundColor: const Color.fromARGB(255, 32, 2, 69),
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
