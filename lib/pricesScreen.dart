import 'package:crypto/backend/providers/prices_provider.dart';
import 'package:crypto/pricesAPI.dart';
import 'package:flutter/material.dart';
import 'package:crypto/backend/entities/cryto_currencies_response.dart';
import 'package:provider/provider.dart';

class PricesScreen extends StatefulWidget {
  const PricesScreen({super.key});

  @override
  _PricesScreenState createState() => _PricesScreenState();
}

class _PricesScreenState extends State<PricesScreen> {
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
          'PRICES',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
                          Text(
                            'BNB',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 86, 6, 120),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.network(
                              'https://m.media-amazon.com/images/I/61d65G+qtgL.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                          Card(
                            color: Colors.blueGrey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'PRICE : ',
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 86, 6, 120),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                Flexible(
                                  child: Text(
                                    data.first.bnb!.usd.toString(),
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 6, 8, 120),
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
                          Text(
                            'ETH',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 86, 6, 120),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.network(
                              'https://previews.123rf.com/images/ryzhi/ryzhi1712/ryzhi171200066/91650086-crypto-currency-golden-coin-with-golden-ethereum-symbol-on-obverse-isolated-on-white-background.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                          Card(
                            color: Colors.blueGrey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'PRICE : ',
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 86, 6, 120),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                Flexible(
                                  child: Text(
                                    data.first.eth!.usd.toString(),
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 6, 8, 120),
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
                          Text(
                            'BTC',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 86, 6, 120),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.network(
                              'https://recovermycryptowallet.com/wp-content/uploads/2023/03/bitcoin-transparent.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                          Card(
                            color: Colors.blueGrey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'PRICE : ',
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 86, 6, 120),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                Flexible(
                                  child: Text(
                                    data.first.btc!.usd.toString(),
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 6, 8, 120),
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
                    )
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
    );
  }
}
