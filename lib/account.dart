// class Account extends StatefulWidget {
//   const Account({super.key});

//   @override
//   State<Account> createState() => _AccountState();
// }

// class _AccountState extends State<Account> {
//   var balance = 10000.0;
//   var bnbnbr = 0;
//   var ethnbr = 0;
//   var btcnbr = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blueGrey,
//           title: const Text(
//             'ACCOUNT',
//             style: TextStyle(
//                 color: Colors.deepPurple,
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold),
//           ),
//           centerTitle: true,
//         ),
//         body: Container(
//             color: Colors.green[500],
//             width: double.infinity,
//             height: double.infinity,
//             child: SingleChildScrollView(
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Card(
//                         child: Column(children: [
//                       Image.network(
//                           'https://img.freepik.com/vector-premium/usd-coin-usdc-gold-cryptocurrency-blockchain-crypto-currency-moneda-digital-alternativa_674449-413.jpg',
//                           width: 150,
//                           height: 150,
//                           fit: BoxFit.fill),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text(
//                             "USD",
//                             style: TextStyle(
//                                 fontSize: 25, fontWeight: FontWeight.bold),
//                           ),
//                           Flexible(
//                             child: Text(
//                               'Account Balance : ' + balance.toString() + '\$',
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ])),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Card(
//                         child: Column(children: [
//                       Image.network(
//                           'https://thumbs.dreamstime.com/b/pi%C3%A8ce-de-binance-isol%C3%A9e-sur-le-blanc-cryptocurrency-bnb-pi%C3%A8ces-fond-illustration-185890431.jpg',
//                           width: 150,
//                           height: 150,
//                           fit: BoxFit.fill),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text(
//                             "BNB",
//                             style: TextStyle(
//                                 fontSize: 25, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             'NBR : ' + bnbnbr.toString(),
//                             style: TextStyle(
//                                 fontSize: 25, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   bnbnbr = bnbnbr + 1;
//                                   balance = balance - 243.2;
//                                 });
//                               },
//                               child: Text(
//                                 'BYE',
//                                 style: TextStyle(
//                                     fontSize: 25, fontWeight: FontWeight.bold),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Color.fromARGB(255, 202, 5, 5),
//                                 foregroundColor:
//                                     const Color.fromARGB(255, 32, 2, 69),
//                               )),
//                           SizedBox(
//                             width: 20.0,
//                           ),
//                           ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   bnbnbr = bnbnbr - 1;
//                                   balance = balance + 243.2;
//                                 });
//                               },
//                               child: Text(
//                                 'SELL',
//                                 style: TextStyle(
//                                     fontSize: 25, fontWeight: FontWeight.bold),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor:
//                                     const Color.fromARGB(255, 7, 139, 139),
//                                 foregroundColor:
//                                     const Color.fromARGB(255, 32, 2, 69),
//                               ))
//                         ],
//                       )
//                     ])),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Card(
//                         child: Column(children: [
//                       Image.network(
//                           'https://ds.static.rtbf.be/article/image/1920x1920/4/9/8/6734fa703f6633ab896eecbdfad8953a-1663141274.jpg',
//                           width: 150,
//                           height: 150,
//                           fit: BoxFit.fill),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text(
//                             "ETH",
//                             style: TextStyle(
//                                 fontSize: 25, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             'NBR : ' + ethnbr.toString(),
//                             style: TextStyle(
//                                 fontSize: 25, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   ethnbr = ethnbr + 1;
//                                   balance = balance - 1909.56;
//                                 });
//                               },
//                               child: Text(
//                                 'BYE',
//                                 style: TextStyle(
//                                     fontSize: 25, fontWeight: FontWeight.bold),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Color.fromARGB(255, 202, 5, 5),
//                                 foregroundColor:
//                                     const Color.fromARGB(255, 32, 2, 69),
//                               )),
//                           SizedBox(
//                             width: 20.0,
//                           ),
//                           ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   ethnbr = ethnbr - 1;
//                                   balance = balance + 1909.56;
//                                 });
//                               },
//                               child: Text(
//                                 'SELL',
//                                 style: TextStyle(
//                                     fontSize: 25, fontWeight: FontWeight.bold),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor:
//                                     const Color.fromARGB(255, 7, 139, 139),
//                                 foregroundColor:
//                                     const Color.fromARGB(255, 32, 2, 69),
//                               ))
//                         ],
//                       )
//                     ])),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Card(
//                         child: Column(children: [
//                       Image.network(
//                           'https://recovermycryptowallet.com/wp-content/uploads/2023/03/bitcoin-transparent.png',
//                           width: 150,
//                           height: 150,
//                           fit: BoxFit.fill),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text(
//                             "BTC",
//                             style: TextStyle(
//                                 fontSize: 25, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             'NBR : ' + btcnbr.toString(),
//                             style: TextStyle(
//                                 fontSize: 25, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   btcnbr = btcnbr + 1;
//                                   balance = balance - 30081.47;
//                                 });
//                               },
//                               child: Text(
//                                 'BYE',
//                                 style: TextStyle(
//                                     fontSize: 25, fontWeight: FontWeight.bold),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Color.fromARGB(255, 202, 5, 5),
//                                 foregroundColor:
//                                     const Color.fromARGB(255, 32, 2, 69),
//                               )),
//                           SizedBox(
//                             width: 20.0,
//                           ),
//                           ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   btcnbr = bnbnbr - 1;
//                                   balance = balance + 30081.47;
//                                 });
//                               },
//                               child: Text(
//                                 'SELL',
//                                 style: TextStyle(
//                                     fontSize: 25, fontWeight: FontWeight.bold),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor:
//                                     const Color.fromARGB(255, 7, 139, 139),
//                                 foregroundColor:
//                                     const Color.fromARGB(255, 32, 2, 69),
//                               ))
//                         ],
//                       )
//                     ])),
//                     SizedBox(
//                       height: 40,
//                     ),
//                   ]),
//             )));
//   }
// }

import 'package:crypto/pricesAPI.dart';
import 'package:flutter/material.dart';
import 'package:crypto/backend/entities/cryto_currencies_response.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  var balance = 10000.00;
  var bnbnbr = 0;
  var ethnbr = 0;
  var btcnbr = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'ACCOUNT',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green[500],
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
                  return Column(
                    children: [
                      //afficher(data.first),
                      //afficher(data.last),
                      SizedBox(
                        height: 40,
                      ),
                      Card(
                          child: Column(children: [
                        Image.network(
                            'https://img.freepik.com/vector-premium/usd-coin-usdc-gold-cryptocurrency-blockchain-crypto-currency-moneda-digital-alternativa_674449-413.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fill),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "USD",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Flexible(
                              child: Text(
                                'Account Balance : ' +
                                    balance.toString() +
                                    '\$',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ])),
                      SizedBox(
                        height: 40,
                      ),
                      Card(
                          child: Column(children: [
                        Image.network(
                            'https://thumbs.dreamstime.com/b/pi%C3%A8ce-de-binance-isol%C3%A9e-sur-le-blanc-cryptocurrency-bnb-pi%C3%A8ces-fond-illustration-185890431.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fill),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "BNB",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'NBR : ' + bnbnbr.toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    bnbnbr = bnbnbr + 1;
                                    balance = balance - data.first.bnb!.usd!;
                                  });
                                },
                                child: Text(
                                  'BYE',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 202, 5, 5),
                                  foregroundColor:
                                      const Color.fromARGB(255, 32, 2, 69),
                                )),
                            SizedBox(
                              width: 20.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    bnbnbr = bnbnbr - 1;
                                    balance = balance + data.first.bnb!.usd!;
                                  });
                                },
                                child: Text(
                                  'SELL',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 7, 139, 139),
                                  foregroundColor:
                                      const Color.fromARGB(255, 32, 2, 69),
                                ))
                          ],
                        )
                      ])),
                      SizedBox(
                        height: 40,
                      ),
                      Card(
                          child: Column(children: [
                        Image.network(
                            'https://ds.static.rtbf.be/article/image/1920x1920/4/9/8/6734fa703f6633ab896eecbdfad8953a-1663141274.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fill),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "ETH",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'NBR : ' + ethnbr.toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    ethnbr = ethnbr + 1;
                                    balance = balance - data.first.eth!.usd!;
                                  });
                                },
                                child: Text(
                                  'BYE',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 202, 5, 5),
                                  foregroundColor:
                                      const Color.fromARGB(255, 32, 2, 69),
                                )),
                            SizedBox(
                              width: 20.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    ethnbr = ethnbr - 1;
                                    balance = balance + data.first.eth!.usd!;
                                  });
                                },
                                child: Text(
                                  'SELL',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 7, 139, 139),
                                  foregroundColor:
                                      const Color.fromARGB(255, 32, 2, 69),
                                ))
                          ],
                        )
                      ])),
                      SizedBox(
                        height: 40,
                      ),
                      Card(
                          child: Column(children: [
                        Image.network(
                            'https://recovermycryptowallet.com/wp-content/uploads/2023/03/bitcoin-transparent.png',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fill),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "BTC",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'NBR : ' + btcnbr.toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    btcnbr = btcnbr + 1;
                                    balance = balance - data.first.btc!.usd!;
                                  });
                                },
                                child: Text(
                                  'BYE',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 202, 5, 5),
                                  foregroundColor:
                                      const Color.fromARGB(255, 32, 2, 69),
                                )),
                            SizedBox(
                              width: 20.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    btcnbr = bnbnbr - 1;
                                    balance = balance + data.first.btc!.usd!;
                                  });
                                },
                                child: Text(
                                  'SELL',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 7, 139, 139),
                                  foregroundColor:
                                      const Color.fromARGB(255, 32, 2, 69),
                                ))
                          ],
                        )
                      ])),
                      SizedBox(
                        height: 40,
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