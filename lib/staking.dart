import 'package:crypto/backend/providers/colors.dart';
import 'package:crypto/backend/providers/prices_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Staking extends StatefulWidget {
  const Staking({super.key});

  @override
  State<Staking> createState() => _StakingState();
}

class _StakingState extends State<Staking> {
  int k = 3600 * 24 * 1000;
  int n1 = 0, n2 = 0, n3 = 0;
  int k1 = 0, k2 = 0, k3 = 0;

  Color col1 = Color.fromARGB(255, 220, 224, 15),
      col2 = Color.fromARGB(255, 220, 224, 15),
      col3 = Color.fromARGB(255, 220, 224, 15),
      col4 = Color.fromARGB(255, 220, 224, 15),
      col11 = Color.fromARGB(255, 220, 224, 15),
      col12 = Color.fromARGB(255, 220, 224, 15),
      col13 = Color.fromARGB(255, 220, 224, 15),
      col14 = Color.fromARGB(255, 220, 224, 15),
      col21 = Color.fromARGB(255, 220, 224, 15),
      col22 = Color.fromARGB(255, 220, 224, 15),
      col23 = Color.fromARGB(255, 220, 224, 15),
      col24 = Color.fromARGB(255, 220, 224, 15);

  @override
  Widget build(BuildContext context) {
    context.watch<Prices>();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'STAKING',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
            color: Provider.of<Colr>(context, listen: false).bkgcol,
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
                                  Provider.of<Prices>(context)
                                      .balance
                                      .toString() +
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
                            'NBR : ' +
                                Provider.of<Prices>(context).bnbnbr.toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        'price : ' +
                            Provider.of<Prices>(context).bnbprice!.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'income : 5.86% up to 8.69% ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col1 = Color.fromRGBO(223, 87, 3, 1);
                                    col2 = col3 = col4 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n1 = 1;
                                  });
                                },
                                child: Text(
                                  "30",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col1,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col2 = Color.fromRGBO(223, 87, 3, 1);
                                    col1 = col3 = col4 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n1 = 2;
                                  });
                                },
                                child: Text(
                                  "60",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col2,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col3 = Color.fromRGBO(223, 87, 3, 1);
                                    col2 = col1 = col4 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n1 = 3;
                                  });
                                },
                                child: Text(
                                  "90",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col3,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col4 = Color.fromRGBO(223, 87, 3, 1);
                                    col2 = col3 = col1 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n1 = 4;
                                  });
                                },
                                child: Text(
                                  "120",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col4,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  Provider.of<Prices>(context, listen: false)
                                      .set101();
                                });

                                k1 = k1 + 1;
                                await Future.delayed(
                                    Duration(milliseconds: 30 * n1 * k));
                                setState(() {
                                  Provider.of<Prices>(context)
                                      .stackIncome1(n1, k1);
                                });
                              },
                              child: Text(
                                'STAKE',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 202, 5, 5),
                                foregroundColor:
                                    const Color.fromARGB(255, 32, 2, 69),
                              )),
                          SizedBox(
                            width: 20.0,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Provider.of<Prices>(context, listen: false)
                                      .set100();
                                  k1 = k1 - 1;
                                });
                              },
                              child: Text(
                                'FREE',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
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
                            'NBR : ' +
                                Provider.of<Prices>(context).ethnbr.toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        'price : ' +
                            Provider.of<Prices>(context).ethprice!.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'income : 6.00%  ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col11 = Color.fromRGBO(223, 87, 3, 1);
                                    col12 = col13 = col14 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n2 = 1;
                                  });
                                },
                                child: Text(
                                  "30",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col11,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col12 = Color.fromRGBO(223, 87, 3, 1);
                                    col11 = col13 = col14 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n2 = 2;
                                  });
                                },
                                child: Text(
                                  "60",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col12,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col13 = Color.fromRGBO(223, 87, 3, 1);
                                    col12 = col11 = col14 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n2 = 3;
                                  });
                                },
                                child: Text(
                                  "90",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col13,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col14 = Color.fromRGBO(223, 87, 3, 1);
                                    col12 = col13 = col11 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n2 = 4;
                                  });
                                },
                                child: Text(
                                  "120",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col14,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() async {
                                  Provider.of<Prices>(context, listen: false)
                                      .set201();

                                  k2 = k2 + 1;
                                  await Future.delayed(
                                      Duration(milliseconds: 30 * n2 * k));
                                  setState(() {
                                    Provider.of<Prices>(context)
                                        .stackIncome1(n2, k1);
                                  });
                                });
                              },
                              child: Text(
                                'STAKE',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 202, 5, 5),
                                foregroundColor:
                                    const Color.fromARGB(255, 32, 2, 69),
                              )),
                          SizedBox(
                            width: 20.0,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Provider.of<Prices>(context, listen: false)
                                      .set200();
                                  k2 = k2 - 1;
                                });
                              },
                              child: Text(
                                'FREE',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
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
                            'NBR : ' +
                                Provider.of<Prices>(context).btcnbr.toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        'price : ' +
                            Provider.of<Prices>(context).btcprice!.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'income : 4.00%  ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col21 = Color.fromRGBO(223, 87, 3, 1);
                                    col22 = col23 = col24 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n3 = 1;
                                  });
                                },
                                child: Text(
                                  "30",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col21,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col22 = Color.fromRGBO(223, 87, 3, 1);
                                    col21 = col23 = col24 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n3 = 2;
                                  });
                                },
                                child: Text(
                                  "60",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col22,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col23 = Color.fromRGBO(223, 87, 3, 1);
                                    col22 = col21 = col24 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n3 = 3;
                                  });
                                },
                                child: Text(
                                  "90",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col23,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    col24 = Color.fromRGBO(223, 87, 3, 1);
                                    col22 = col23 = col21 =
                                        Color.fromARGB(255, 220, 224, 15);
                                    n3 = 4;
                                  });
                                },
                                child: Text(
                                  "120",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: col24,
                                  foregroundColor:
                                      Color.fromARGB(255, 21, 15, 116),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  Provider.of<Prices>(context, listen: false)
                                      .set301();
                                });

                                k3 = k3 + 1;
                                await Future.delayed(
                                    Duration(milliseconds: 30 * n3 * k));
                                setState(() {
                                  Provider.of<Prices>(context)
                                      .stackIncome1(n3, k3);
                                });
                              },
                              child: Text(
                                'STAKE',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 202, 5, 5),
                                foregroundColor:
                                    const Color.fromARGB(255, 32, 2, 69),
                              )),
                          SizedBox(
                            width: 20.0,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Provider.of<Prices>(context, listen: false)
                                      .set300();
                                  k3 = k3 - 1;
                                });
                              },
                              child: Text(
                                'FREE',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
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
                  ]),
            )));
  }
}
