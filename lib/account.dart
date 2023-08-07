import 'package:crypto/backend/providers/colors.dart';
import 'package:crypto/backend/providers/prices_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    context.watch<Prices>();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(198, 204, 231, 236)
              : Color.fromARGB(102, 182, 193, 187),
          title: Text(
            'ACCOUNT',
            style: TextStyle(
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
                fontSize: 25,
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
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                        color: Provider.of<Colr>(context).bkgcol == 0
                            ? Color.fromARGB(198, 204, 231, 236)
                            : Color.fromARGB(102, 182, 193, 187),
                        child: Column(children: [
                          Image.network(
                              'https://img.freepik.com/vector-premium/usd-coin-usdc-gold-cryptocurrency-blockchain-crypto-currency-moneda-digital-alternativa_674449-413.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                          Card(
                            color: Provider.of<Colr>(context).bkgcol == 0
                                ? Color.fromARGB(197, 47, 207, 235)
                                : Color.fromARGB(204, 125, 142, 133),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "USD",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Flexible(
                                  child: Text(
                                    'Account Balance : ' +
                                        Prices().balance.toString() +
                                        '\$',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                        color: Provider.of<Colr>(context).bkgcol == 0
                            ? Color.fromARGB(198, 204, 231, 236)
                            : Color.fromARGB(102, 182, 193, 187),
                        child: Column(children: [
                          Image.network(
                              'https://thumbs.dreamstime.com/b/pi%C3%A8ce-de-binance-isol%C3%A9e-sur-le-blanc-cryptocurrency-bnb-pi%C3%A8ces-fond-illustration-185890431.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                          Card(
                            color: Provider.of<Colr>(context).bkgcol == 0
                                ? Color.fromARGB(197, 47, 207, 235)
                                : Color.fromARGB(204, 125, 142, 133),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "BNB",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'NBR : ' +
                                          Provider.of<Prices>(context,
                                                  listen: false)
                                              .bnbnbr
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  'price : ' +
                                      Provider.of<Prices>(context)
                                          .bnbprice
                                          .toString(),
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            Provider.of<Prices>(context,
                                                    listen: false)
                                                .buybnb();
                                          });
                                        },
                                        child: Text(
                                          'BUY',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 202, 5, 5),
                                          foregroundColor: const Color.fromARGB(
                                              255, 32, 2, 69),
                                        )),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    ElevatedButton(
                                        onPressed: () async {
                                          await Provider.of<Prices>(context,
                                                  listen: false)
                                              .sellbnb();
                                          setState(() {
                                            // Provider.of<Prices>(context).addBalance();
                                            // Provider.of<Prices>(context).addBnb();
                                          });
                                        },
                                        child: Text(
                                          'SELL',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 7, 139, 139),
                                          foregroundColor: const Color.fromARGB(
                                              255, 32, 2, 69),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          )
                        ])),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                        color: Provider.of<Colr>(context).bkgcol == 0
                            ? Color.fromARGB(198, 204, 231, 236)
                            : Color.fromARGB(102, 182, 193, 187),
                        child: Column(children: [
                          Image.network(
                              'https://ds.static.rtbf.be/article/image/1920x1920/4/9/8/6734fa703f6633ab896eecbdfad8953a-1663141274.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                          Card(
                            color: Provider.of<Colr>(context).bkgcol == 0
                                ? Color.fromARGB(197, 47, 207, 235)
                                : Color.fromARGB(204, 125, 142, 133),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "ETH",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'NBR : ' +
                                          Provider.of<Prices>(context,
                                                  listen: false)
                                              .ethnbr
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  'price : ' +
                                      Provider.of<Prices>(context)
                                          .ethprice
                                          .toString(),
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            Provider.of<Prices>(context,
                                                    listen: false)
                                                .buyeth();
                                            // Provider.of<Prices>(context).addBalance();
                                            // Provider.of<Prices>(context).addEth();
                                          });
                                        },
                                        child: Text(
                                          'BUY',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 202, 5, 5),
                                          foregroundColor: const Color.fromARGB(
                                              255, 32, 2, 69),
                                        )),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            Provider.of<Prices>(context,
                                                    listen: false)
                                                .selleth();
                                            // Provider.of<Prices>(context).addBalance();
                                            // Provider.of<Prices>(context).addEth();
                                          });
                                        },
                                        child: Text(
                                          'SELL',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 7, 139, 139),
                                          foregroundColor: const Color.fromARGB(
                                              255, 32, 2, 69),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          )
                        ])),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                        color: Provider.of<Colr>(context).bkgcol == 0
                            ? Color.fromARGB(198, 204, 231, 236)
                            : Color.fromARGB(102, 182, 193, 187),
                        child: Column(children: [
                          Image.network(
                              'https://recovermycryptowallet.com/wp-content/uploads/2023/03/bitcoin-transparent.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                          Card(
                            color: Provider.of<Colr>(context).bkgcol == 0
                                ? Color.fromARGB(197, 47, 207, 235)
                                : Color.fromARGB(204, 125, 142, 133),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "BTC",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'NBR : ' +
                                          Provider.of<Prices>(context,
                                                  listen: false)
                                              .btcnbr
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  'price : ' +
                                      Provider.of<Prices>(context)
                                          .btcprice
                                          .toString(),
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            Provider.of<Prices>(context,
                                                    listen: false)
                                                .buybtc();
                                            // Provider.of<Prices>(context).addBalance();
                                            // Provider.of<Prices>(context).addBtc();
                                          });
                                        },
                                        child: Text(
                                          'BUY',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 202, 5, 5),
                                          foregroundColor: const Color.fromARGB(
                                              255, 32, 2, 69),
                                        )),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            Provider.of<Prices>(context,
                                                    listen: false)
                                                .sellbtc();
                                            // Provider.of<Prices>(context).addBalance();
                                            // Provider.of<Prices>(context).addBtc();
                                          });
                                        },
                                        child: Text(
                                          'SELL',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 7, 139, 139),
                                          foregroundColor: const Color.fromARGB(
                                              255, 32, 2, 69),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          )
                        ])),
                    SizedBox(
                      height: 40,
                    ),
                  ]),
            )));
  }
}
///////////////////////////////////////////////
// import 'package:crypto/pricesAPI.dart';
// import 'package:flutter/material.dart';
// import 'package:crypto/backend/entities/cryto_currencies_response.dart';

// class Account extends StatefulWidget {
//   const Account({super.key});

//   @override
//   _AccountState createState() => _AccountState();
// }

// class _AccountState extends State<Account> {
//   var balance = 10000.00;
//   var bnbnbr = 0;
//   var ethnbr = 0;
//   var btcnbr = 0;
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         title: const Text(
//           'ACCOUNT',
//           style: TextStyle(
//               color: Colors.deepPurple,
//               fontSize: 25,
//               fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           color: Colors.green[500],
//           child: FutureBuilder<List<CrytoCurrenciesResponse>?>(
//             future: ApiService().getCryptoCurrencies(),
//             builder: (ctx, snapshot) {
//               // Checking if future is resolved or not
//               if (snapshot.connectionState == ConnectionState.done) {
//                 // If we got an error
//                 if (snapshot.hasError) {
//                   return Center(
//                     child: Text(
//                       '${snapshot.error} occurred',
//                       style: const TextStyle(fontSize: 18),
//                     ),
//                   );

//                   // if we got our data
//                 } else if (snapshot.hasData) {
//                   // Extracting data from snapshot object
//                   List<CrytoCurrenciesResponse> data = snapshot.data!;
//                   return Column(
//                     children: [
//                       //afficher(data.first),
//                       //afficher(data.last),
//                       SizedBox(
//                         height: 40,
//                       ),
//                       Card(
//                           child: Column(children: [
//                         Image.network(
//                             'https://img.freepik.com/vector-premium/usd-coin-usdc-gold-cryptocurrency-blockchain-crypto-currency-moneda-digital-alternativa_674449-413.jpg',
//                             width: 150,
//                             height: 150,
//                             fit: BoxFit.fill),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(
//                               "USD",
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.bold),
//                             ),
//                             Flexible(
//                               child: Text(
//                                 'Account Balance : ' +
//                                     balance.toString() +
//                                     '\$',
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ])),
//                       SizedBox(
//                         height: 40,
//                       ),
//                       Card(
//                           child: Column(children: [
//                         Image.network(
//                             'https://thumbs.dreamstime.com/b/pi%C3%A8ce-de-binance-isol%C3%A9e-sur-le-blanc-cryptocurrency-bnb-pi%C3%A8ces-fond-illustration-185890431.jpg',
//                             width: 150,
//                             height: 150,
//                             fit: BoxFit.fill),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(
//                               "BNB",
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               'NBR : ' + bnbnbr.toString(),
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ElevatedButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     bnbnbr = bnbnbr + 1;
//                                     balance = balance - data.first.bnb!.usd!;
//                                   });
//                                 },
//                                 child: Text(
//                                   'BUY',
//                                   style: TextStyle(
//                                       fontSize: 25,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor:
//                                       Color.fromARGB(255, 202, 5, 5),
//                                   foregroundColor:
//                                       const Color.fromARGB(255, 32, 2, 69),
//                                 )),
//                             SizedBox(
//                               width: 20.0,
//                             ),
//                             ElevatedButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     bnbnbr = bnbnbr - 1;
//                                     balance = balance + data.first.bnb!.usd!;
//                                   });
//                                 },
//                                 child: Text(
//                                   'SELL',
//                                   style: TextStyle(
//                                       fontSize: 25,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor:
//                                       const Color.fromARGB(255, 7, 139, 139),
//                                   foregroundColor:
//                                       const Color.fromARGB(255, 32, 2, 69),
//                                 ))
//                           ],
//                         )
//                       ])),
//                       SizedBox(
//                         height: 40,
//                       ),
//                       Card(
//                           child: Column(children: [
//                         Image.network(
//                             'https://ds.static.rtbf.be/article/image/1920x1920/4/9/8/6734fa703f6633ab896eecbdfad8953a-1663141274.jpg',
//                             width: 150,
//                             height: 150,
//                             fit: BoxFit.fill),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(
//                               "ETH",
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               'NBR : ' + ethnbr.toString(),
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ElevatedButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     ethnbr = ethnbr + 1;
//                                     balance = balance - data.first.eth!.usd!;
//                                   });
//                                 },
//                                 child: Text(
//                                   'BYE',
//                                   style: TextStyle(
//                                       fontSize: 25,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor:
//                                       Color.fromARGB(255, 202, 5, 5),
//                                   foregroundColor:
//                                       const Color.fromARGB(255, 32, 2, 69),
//                                 )),
//                             SizedBox(
//                               width: 20.0,
//                             ),
//                             ElevatedButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     ethnbr = ethnbr - 1;
//                                     balance = balance + data.first.eth!.usd!;
//                                   });
//                                 },
//                                 child: Text(
//                                   'SELL',
//                                   style: TextStyle(
//                                       fontSize: 25,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor:
//                                       const Color.fromARGB(255, 7, 139, 139),
//                                   foregroundColor:
//                                       const Color.fromARGB(255, 32, 2, 69),
//                                 ))
//                           ],
//                         )
//                       ])),
//                       SizedBox(
//                         height: 40,
//                       ),
//                       Card(
//                           child: Column(children: [
//                         Image.network(
//                             'https://recovermycryptowallet.com/wp-content/uploads/2023/03/bitcoin-transparent.png',
//                             width: 150,
//                             height: 150,
//                             fit: BoxFit.fill),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(
//                               "BTC",
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               'NBR : ' + btcnbr.toString(),
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ElevatedButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     btcnbr = btcnbr + 1;
//                                     balance = balance - data.first.btc!.usd!;
//                                   });
//                                 },
//                                 child: Text(
//                                   'BYE',
//                                   style: TextStyle(
//                                       fontSize: 25,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor:
//                                       Color.fromARGB(255, 202, 5, 5),
//                                   foregroundColor:
//                                       const Color.fromARGB(255, 32, 2, 69),
//                                 )),
//                             SizedBox(
//                               width: 20.0,
//                             ),
//                             ElevatedButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     btcnbr = bnbnbr - 1;
//                                     balance = balance + data.first.btc!.usd!;
//                                   });
//                                 },
//                                 child: Text(
//                                   'SELL',
//                                   style: TextStyle(
//                                       fontSize: 25,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor:
//                                       const Color.fromARGB(255, 7, 139, 139),
//                                   foregroundColor:
//                                       const Color.fromARGB(255, 32, 2, 69),
//                                 ))
//                           ],
//                         )
//                       ])),
//                       SizedBox(
//                         height: 40,
//                       ),
//                     ],
//                   );
//                 }
//               }

//               // Displaying LoadingSpinner to indicate waiting state
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
