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

  @override
  Widget build(BuildContext context) {
    context.watch<Prices>();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(198, 204, 231, 236)
              : Color.fromARGB(102, 182, 193, 187),
          title: Text(
            'STAKING',
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
                                        Provider.of<Prices>(context)
                                            .balance
                                            .toString() +
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
                                    Provider.of<Prices>(context)
                                        .bnbnbr
                                        .toString(),
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Staked : ' +
                                    Provider.of<Prices>(context).k1.toString(),
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Card(
                            color: Provider.of<Colr>(context).bkgcol == 0
                                ? Color.fromARGB(197, 47, 207, 235)
                                : Color.fromARGB(204, 125, 142, 133),
                            child: Text(
                              'price : ' +
                                  Provider.of<Prices>(context)
                                      .bnbprice
                                      .toString(),
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'income : 5.86% up to 8.69% ',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold),
                          ),
                          Card(
                              color: Provider.of<Colr>(context).bkgcol == 0
                                  ? Color.fromARGB(197, 47, 207, 235)
                                  : Color.fromARGB(204, 125, 142, 133),
                              child: Column(
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                Provider.of<Prices>(context,
                                                        listen: false)
                                                    .stakeBnb30();
                                              });
                                            },
                                            child: Text(
                                              "30",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Provider.of<Prices>(context)
                                                          .col1
                                                      ? Color.fromRGBO(223, 87,
                                                          3, 1)
                                                      : Color.fromARGB(
                                                          255, 243, 243, 1),
                                              foregroundColor: Color.fromARGB(
                                                  255, 21, 15, 116),
                                            )),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                Provider.of<Prices>(context,
                                                        listen: false)
                                                    .stakeBnb60();
                                              });
                                            },
                                            child: Text(
                                              "60",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Provider.of<Prices>(context)
                                                          .col2
                                                      ? Color.fromRGBO(223, 87,
                                                          3, 1)
                                                      : Color.fromARGB(
                                                          255, 243, 243, 1),
                                              foregroundColor: Color.fromARGB(
                                                  255, 21, 15, 116),
                                            )),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                Provider.of<Prices>(context,
                                                        listen: false)
                                                    .stakeBnb90();
                                              });
                                            },
                                            child: Text(
                                              "90",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Provider.of<Prices>(context)
                                                          .col3
                                                      ? Color.fromRGBO(223, 87,
                                                          3, 1)
                                                      : Color.fromARGB(
                                                          255, 243, 243, 1),
                                              foregroundColor: Color.fromARGB(
                                                  255, 21, 15, 116),
                                            )),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                Provider.of<Prices>(context,
                                                        listen: false)
                                                    .stakeBnb120();
                                              });
                                            },
                                            child: Text(
                                              "120",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Provider.of<Prices>(context)
                                                          .col4
                                                      ? Color.fromRGBO(223, 87,
                                                          3, 1)
                                                      : Color.fromARGB(
                                                          255, 243, 243, 1),
                                              foregroundColor: Color.fromARGB(
                                                  255, 21, 15, 116),
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
                                              Provider.of<Prices>(context,
                                                      listen: false)
                                                  .stakeBnb();

                                              // Provider.of<Prices>(context, listen: false)
                                              //     .addBnb();
                                            });

                                            await Future.delayed(Duration(
                                                milliseconds: 30 *
                                                    Provider.of<Prices>(context)
                                                        .n1 *
                                                    k));
                                            setState(() {
                                              Provider.of<Prices>(context)
                                                  .stackIncome1();

                                              // Provider.of<Prices>(context, listen: false)
                                              //     .addBnb();
                                            });
                                          },
                                          child: Text(
                                            'STAKE',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Color.fromARGB(255, 202, 5, 5),
                                            foregroundColor:
                                                const Color.fromARGB(
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
                                                  .freeBnb();

                                              // Provider.of<Prices>(context, listen: false)
                                              //     .addBnb();
                                            });
                                          },
                                          child: Text(
                                            'FREE',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 7, 139, 139),
                                            foregroundColor:
                                                const Color.fromARGB(
                                                    255, 32, 2, 69),
                                          ))
                                    ],
                                  ),
                                ],
                              ))
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
                                    Provider.of<Prices>(context)
                                        .ethnbr
                                        .toString(),
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Staked : ' +
                                    Provider.of<Prices>(context).k2.toString(),
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Card(
                            color: Provider.of<Colr>(context).bkgcol == 0
                                ? Color.fromARGB(197, 47, 207, 235)
                                : Color.fromARGB(204, 125, 142, 133),
                            child: Text(
                              'price : ' +
                                  Provider.of<Prices>(context)
                                      .ethprice
                                      .toString(),
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'income : 6.00%  ',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold),
                          ),
                          Card(
                              color: Provider.of<Colr>(context).bkgcol == 0
                                  ? Color.fromARGB(197, 47, 207, 235)
                                  : Color.fromARGB(204, 125, 142, 133),
                              child: Column(
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                Provider.of<Prices>(context,
                                                        listen: false)
                                                    .stakeEth30();
                                              });
                                            },
                                            child: Text(
                                              "30",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Provider.of<Prices>(context)
                                                          .col11
                                                      ? Color.fromRGBO(223, 87,
                                                          3, 1)
                                                      : Color.fromARGB(
                                                          255, 243, 243, 1),
                                              foregroundColor: Color.fromARGB(
                                                  255, 21, 15, 116),
                                            )),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                Provider.of<Prices>(context,
                                                        listen: false)
                                                    .stakeEth60();
                                              });
                                            },
                                            child: Text(
                                              "60",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Provider.of<Prices>(context)
                                                          .col12
                                                      ? Color.fromRGBO(223, 87,
                                                          3, 1)
                                                      : Color.fromARGB(
                                                          255, 243, 243, 1),
                                              foregroundColor: Color.fromARGB(
                                                  255, 21, 15, 116),
                                            )),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                Provider.of<Prices>(context,
                                                        listen: false)
                                                    .stakeEth90();
                                              });
                                            },
                                            child: Text(
                                              "90",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Provider.of<Prices>(context)
                                                          .col13
                                                      ? Color.fromRGBO(223, 87,
                                                          3, 1)
                                                      : Color.fromARGB(
                                                          255, 243, 243, 1),
                                              foregroundColor: Color.fromARGB(
                                                  255, 21, 15, 116),
                                            )),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                Provider.of<Prices>(context,
                                                        listen: false)
                                                    .stakeEth120();
                                              });
                                            },
                                            child: Text(
                                              "120",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Provider.of<Prices>(context)
                                                          .col14
                                                      ? Color.fromRGBO(223, 87,
                                                          3, 1)
                                                      : Color.fromARGB(
                                                          255, 243, 243, 1),
                                              foregroundColor: Color.fromARGB(
                                                  255, 21, 15, 116),
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
                                              Provider.of<Prices>(context,
                                                      listen: false)
                                                  .stakeEth();

                                              await Future.delayed(Duration(
                                                  milliseconds: 30 *
                                                      Provider.of<Prices>(
                                                              context)
                                                          .n2 *
                                                      k));
                                              setState(() {
                                                Provider.of<Prices>(context)
                                                    .stackIncome1();
                                              });
                                            });
                                          },
                                          child: Text(
                                            'STAKE',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Color.fromARGB(255, 202, 5, 5),
                                            foregroundColor:
                                                const Color.fromARGB(
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
                                                  .freeEth();
                                            });
                                          },
                                          child: Text(
                                            'FREE',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 7, 139, 139),
                                            foregroundColor:
                                                const Color.fromARGB(
                                                    255, 32, 2, 69),
                                          ))
                                    ],
                                  ),
                                ],
                              )),
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
                                    Provider.of<Prices>(context)
                                        .btcnbr
                                        .toString(),
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Staked : ' +
                                    Provider.of<Prices>(context).k3.toString(),
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Card(
                            color: Provider.of<Colr>(context).bkgcol == 0
                                ? Color.fromARGB(197, 47, 207, 235)
                                : Color.fromARGB(204, 125, 142, 133),
                            child: Text(
                              'price : ' +
                                  Provider.of<Prices>(context)
                                      .btcprice
                                      .toString(),
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'income : 4.00%  ',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold),
                          ),
                          Card(
                            color: Provider.of<Colr>(context).bkgcol == 0
                                ? Color.fromARGB(197, 47, 207, 235)
                                : Color.fromARGB(204, 125, 142, 133),
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              Provider.of<Prices>(context,
                                                      listen: false)
                                                  .stakeBtc30();
                                            });
                                          },
                                          child: Text(
                                            "30",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Provider.of<Prices>(context)
                                                        .col21
                                                    ? Color.fromRGBO(
                                                        223, 87, 3, 1)
                                                    : Color.fromARGB(
                                                        255, 243, 243, 1),
                                            foregroundColor: Color.fromARGB(
                                                255, 21, 15, 116),
                                          )),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              Provider.of<Prices>(context,
                                                      listen: false)
                                                  .stakeBtc60();
                                            });
                                          },
                                          child: Text(
                                            "60",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Provider.of<Prices>(context)
                                                        .col22
                                                    ? Color.fromRGBO(
                                                        223, 87, 3, 1)
                                                    : Color.fromARGB(
                                                        255, 243, 243, 1),
                                            foregroundColor: Color.fromARGB(
                                                255, 21, 15, 116),
                                          )),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              Provider.of<Prices>(context,
                                                      listen: false)
                                                  .stakeBtc90();
                                            });
                                          },
                                          child: Text(
                                            "90",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Provider.of<Prices>(context)
                                                        .col23
                                                    ? Color.fromRGBO(
                                                        223, 87, 3, 1)
                                                    : Color.fromARGB(
                                                        255, 243, 243, 1),
                                            foregroundColor: Color.fromARGB(
                                                255, 21, 15, 116),
                                          )),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              Provider.of<Prices>(context,
                                                      listen: false)
                                                  .stakeBtc120();
                                            });
                                          },
                                          child: Text(
                                            "120",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Provider.of<Prices>(context)
                                                        .col24
                                                    ? Color.fromRGBO(
                                                        223, 87, 3, 1)
                                                    : Color.fromARGB(
                                                        255, 243, 243, 1),
                                            foregroundColor: Color.fromARGB(
                                                255, 21, 15, 116),
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
                                            Provider.of<Prices>(context,
                                                    listen: false)
                                                .stakeBtc();
                                          });

                                          await Future.delayed(Duration(
                                              milliseconds: 30 *
                                                  Provider.of<Prices>(context)
                                                      .n3 *
                                                  k));
                                          setState(() {
                                            Provider.of<Prices>(context)
                                                .stackIncome1();
                                          });
                                        },
                                        child: Text(
                                          'STAKE',
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
                                                .freeBtc();
                                          });
                                        },
                                        child: Text(
                                          'FREE',
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
                          ),
                        ])),
                    SizedBox(
                      height: 40,
                    ),
                  ]),
            )));
  }
}
