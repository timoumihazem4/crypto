import 'package:flutter/material.dart';

String txt =
    'Bitcoin (BTC) is a cryptocurrency, a virtual currency designed to act as money and a form of payment outside the control of any one person, group, or entity, thus removing the need for third-party involvement in financial transactions. It is rewarded to blockchain miners for the work done to verify transactions and can be purchased on several exchanges. Bitcoin was introduced to the public in 2009 by an anonymous developer or group of developers using the name Satoshi Nakamoto. It has since become the most well-known cryptocurrency in the world. Its popularity has inspired the development of many other cryptocurrencies. These competitors either attempt to replace it as a payment system or are used as utility or security tokens in other blockchains and emerging financial technologies. Learn more about the cryptocurrency that started it all—the history behind it, how it works, how to get it, and what it can be used for.';

// ignore: must_be_immutable
class edu extends StatefulWidget {
  edu({super.key});

  @override
  State<edu> createState() => _eduState();
}

class _eduState extends State<edu> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'EDUCATIONAL RESSORCES',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Scaffold(
          backgroundColor: const Color.fromARGB(255, 7, 139, 139),
          body: Container(
              child: currentIndex == 0
                  ? SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Image.network(
                                'https://img.etimg.com/thumb/width-420,height-315,imgsize-105512,resizemode-75,msid-98602302/markets/cryptocurrency/crypto-prices-today-live-news-bitcoin-dogecoin-ethereum-shibha-inu-cryptocurrency-latest-updates-13-march-2023/crypto-price-today-bitcoin-above-22k-crypto-market-cap-crosses-1-trillion.jpg'),
                            const Text(
                              'Documentation',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              txt,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    )
                  : Image.network(
                      'https://cdnb.artstation.com/p/assets/images/images/009/358/213/original/tony-twaine-comp-2-2.gif?1518528958')),
          bottomNavigationBar: BottomNavigationBar(
            unselectedLabelStyle:
                const TextStyle(color: Colors.white, fontSize: 14),
            backgroundColor: Colors.blueGrey,
            fixedColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                  label: 'Documentation', icon: Icon(Icons.book)),
              BottomNavigationBarItem(
                  label: 'Video',
                  icon: Icon(Icons.youtube_searched_for_rounded))
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ));
  }
}
