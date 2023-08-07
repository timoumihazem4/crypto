import 'package:crypto/NewsScreen.dart';
import 'package:crypto/account.dart';
import 'package:crypto/backend/providers/colors.dart';
import 'package:crypto/backend/providers/prices_provider.dart';
import 'package:crypto/edu.dart';
import 'package:crypto/fav.dart';
import 'package:crypto/imgSelect.dart';
import 'package:crypto/main.dart';
import 'package:crypto/notifications.dart';
import 'package:crypto/payment.dart';
import 'package:crypto/pricesAPI.dart';
import 'package:crypto/search.dart';
import 'package:crypto/settings.dart';
import 'package:crypto/staking.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:crypto/backend/entities/cryto_currencies_response.dart';
import 'package:provider/provider.dart';

class HomePro extends StatefulWidget {
  const HomePro({super.key, required this.email});
  final String email;

  @override
  _HomeProState createState() => _HomeProState();
}

class _HomeProState extends State<HomePro> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
            child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Provider.of<Colr>(context).bkgcol == 0
                      ? Color.fromARGB(198, 204, 231, 236)
                      : Color.fromARGB(102, 182, 193, 187),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ImgSelect()),
                        );
                      },
                      child: FirebaseAuth.instance.currentUser?.photoURL != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.network(
                                  FirebaseAuth.instance.currentUser!.photoURL
                                      .toString(),
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.fill),
                            )
                          : Icon(
                              Icons.account_circle,
                              size: 70,
                              color: Provider.of<Colr>(context).bkgcol == 0
                                  ? Color.fromARGB(197, 47, 207, 235)
                                  : Color.fromARGB(255, 56, 61, 58),
                            ),
                    ),
                    Text(
                      FirebaseAuth.instance.currentUser?.displayName ?? "USER",
                      style: TextStyle(
                          color: Provider.of<Colr>(context).bkgcol == 0
                              ? Color.fromARGB(197, 47, 207, 235)
                              : Color.fromARGB(255, 56, 61, 58),
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0),
                    ),
                    Text(
                      "    " + widget.email + "     ",
                      style: TextStyle(
                          color: Provider.of<Colr>(context).bkgcol == 0
                              ? Color.fromARGB(197, 47, 207, 235)
                              : Color.fromARGB(255, 56, 61, 58),
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ],
                )),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Payment()),
                );
              },
              leading: Icon(
                Icons.account_box,
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
              ),
              title: Text(
                'ACCOUNT',
                style: TextStyle(
                    color: Provider.of<Colr>(context).bkgcol == 0
                        ? Color.fromARGB(197, 47, 207, 235)
                        : Color.fromARGB(255, 56, 61, 58),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Account()),
                );
              },
              leading: Icon(
                Icons.account_box,
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
              ),
              title: Text(
                'VIRTUAL ACCOUNT',
                style: TextStyle(
                    color: Provider.of<Colr>(context).bkgcol == 0
                        ? Color.fromARGB(197, 47, 207, 235)
                        : Color.fromARGB(255, 56, 61, 58),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Fav()),
                );
              },
              leading: Icon(
                Icons.favorite,
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
              ),
              title: Text(
                'FAVORITE',
                style: TextStyle(
                    color: Provider.of<Colr>(context).bkgcol == 0
                        ? Color.fromARGB(197, 47, 207, 235)
                        : Color.fromARGB(255, 56, 61, 58),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Search()),
                );
              },
              leading: Icon(
                Icons.search,
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
              ),
              title: Text(
                'SEARCH',
                style: TextStyle(
                    color: Provider.of<Colr>(context).bkgcol == 0
                        ? Color.fromARGB(197, 47, 207, 235)
                        : Color.fromARGB(255, 56, 61, 58),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
              leading: Icon(
                Icons.settings,
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
              ),
              title: Text(
                'SETTINGS',
                style: TextStyle(
                    color: Provider.of<Colr>(context).bkgcol == 0
                        ? Color.fromARGB(197, 47, 207, 235)
                        : Color.fromARGB(255, 56, 61, 58),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
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
              leading: Icon(
                Icons.logout,
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
              ),
              title: Text(
                'LOGOUT',
                style: TextStyle(
                    color: Provider.of<Colr>(context).bkgcol == 0
                        ? Color.fromARGB(197, 47, 207, 235)
                        : Color.fromARGB(255, 56, 61, 58),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
          ],
        )),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const edu()),
                );
              },
              icon: Icon(
                Icons.book,
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
              )),
          IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notifications()),
                );
              },
              icon: Icon(
                Icons.notifications,
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
              )),
        ],
        backgroundColor: Provider.of<Colr>(context).bkgcol == 0
            ? Color.fromARGB(198, 204, 231, 236)
            : Color.fromARGB(102, 182, 193, 187),
        // title: Text(
        //   'HOME',
        //   style: TextStyle(
        //       color: Provider.of<Colr>(context).bkgcol == 0
        //           ? Color.fromARGB(197, 47, 207, 235)
        //           : Color.fromARGB(255, 56, 61, 58),
        //       fontSize: 35,
        //       fontWeight: FontWeight.bold),
        // ),
        // centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
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
        child: SingleChildScrollView(
          child: FutureBuilder<List<CrytoCurrenciesResponse>?>(
            future: ApiService().getCryptoCurrencies(),
            builder: (ctx, snapshot) {
              // Checking if future is resolved or not
              if (snapshot.connectionState == ConnectionState.done) {
                // If we got an error
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      '${snapshot.error} occurred',
                      style: const TextStyle(fontSize: 18),
                    ),
                  );

                  // if we got our data
                } else if (snapshot.hasData) {
                  // Extracting data from snapshot object
                  List<CrytoCurrenciesResponse> data = snapshot.data!;
                  context.read<Prices>().set1(data.first.bnb!.usd);
                  context.read<Prices>().set2(data.first.eth!.usd);
                  context.read<Prices>().set3(data.first.btc!.usd);

                  return Column(
                    children: [
                      //afficher(data.first),
                      //afficher(data.last),
                      Card(
                        color: Colors.blueGrey[300],
                        child: Column(
                          children: [
                            Card(
                              color: Provider.of<Colr>(context).bkgcol == 0
                                  ? Color.fromARGB(198, 204, 231, 236)
                                  : Color.fromARGB(102, 182, 193, 187),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'BNB  :',
                                    style: TextStyle(
                                        color: Provider.of<Colr>(context)
                                                    .bkgcol ==
                                                0
                                            ? Color.fromARGB(197, 47, 207, 235)
                                            : Color.fromARGB(255, 56, 61, 58),
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Flexible(
                                    child: Text(
                                      data.first.bnb!.usd.toString() + "  \$",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 41, 210, 60),
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        color: Colors.blueGrey[300],
                        child: Column(
                          children: [
                            Card(
                              color: Provider.of<Colr>(context).bkgcol == 0
                                  ? Color.fromARGB(198, 204, 231, 236)
                                  : Color.fromARGB(102, 182, 193, 187),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'ETH  :',
                                    style: TextStyle(
                                        color: Provider.of<Colr>(context)
                                                    .bkgcol ==
                                                0
                                            ? Color.fromARGB(197, 47, 207, 235)
                                            : Color.fromARGB(255, 56, 61, 58),
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Flexible(
                                    child: Text(
                                      data.first.eth!.usd.toString() + "  \$",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 41, 210, 60),
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        color: Colors.blueGrey[300],
                        child: Column(
                          children: [
                            Card(
                              color: Provider.of<Colr>(context).bkgcol == 0
                                  ? Color.fromARGB(198, 204, 231, 236)
                                  : Color.fromARGB(102, 182, 193, 187),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'BTC',
                                    style: TextStyle(
                                        color: Provider.of<Colr>(context)
                                                    .bkgcol ==
                                                0
                                            ? Color.fromARGB(197, 47, 207, 235)
                                            : Color.fromARGB(255, 56, 61, 58),
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Flexible(
                                    child: Text(
                                      data.first.btc!.usd.toString() + "  \$",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 41, 210, 60),
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Staking()),
                          );
                        },
                        icon: const Icon(Icons
                            .stacked_bar_chart), //icon data for elevated button
                        label: const Text(
                          'STAKING',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            //backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                            foregroundColor:
                                Provider.of<Colr>(context).bkgcol == 0
                                    ? Color.fromARGB(197, 47, 207, 235)
                                    : Color.fromARGB(255, 56, 61, 58),
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
                                builder: (context) => const NewsScreen()),
                          );
                        },
                        icon: const Icon(
                            Icons.newspaper), //icon data for elevated button
                        label: const Text(
                          'NEWS',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            //backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                            foregroundColor:
                                Provider.of<Colr>(context).bkgcol == 0
                                    ? Color.fromARGB(197, 47, 207, 235)
                                    : Color.fromARGB(255, 56, 61, 58),
                            minimumSize: const Size(400, 80)),
                      ),
                    ],
                  );
                }
              }

              // Displaying LoadingSpinner to indicate waiting state
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
