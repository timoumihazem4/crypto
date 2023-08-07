import 'package:crypto/backend/providers/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:crypto/youtube_player.dart';

String txt =
    'Bitcoin (BTC) is a cryptocurrency, a virtual currency designed to act as money and a form of payment outside the control of any one person, group, or entity, thus removing the need for third-party involvement in financial transactions. It is rewarded to blockchain miners for the work done to verify transactions and can be purchased on several exchanges. Bitcoin was introduced to the public in 2009 by an anonymous developer or group of developers using the name Satoshi Nakamoto. It has since become the most well-known cryptocurrency in the world. Its popularity has inspired the development of many other cryptocurrencies. These competitors either attempt to replace it as a payment system or are used as utility or security tokens in other blockchains and emerging financial technologies. Learn more about the cryptocurrency that started it all—the history behind it, how it works, how to get it, and what it can be used for.';

// ignore: must_be_immutable
class edu extends StatefulWidget {
  const edu({super.key});

  @override
  State<edu> createState() => _eduState();
}

class _eduState extends State<edu> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    context.watch<Colr>();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(198, 204, 231, 236)
              : Color.fromARGB(102, 182, 193, 187),
          title: Text(
            'EDUCATIONAL RESSORCES',
            style: TextStyle(
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Scaffold(
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
              child: currentIndex == 0
                  ? SingleChildScrollView(
                      child: Column(children: [
                      const SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Introduction()),
                          );
                          setState(() {
                            Provider.of<Colr>(context, listen: false).setcl0();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Provider.of<Colr>(context).colr0
                                ? Colors.red
                                : Colors.white,
                            foregroundColor:
                                Provider.of<Colr>(context).bkgcol == 0
                                    ? Color.fromARGB(197, 47, 207, 235)
                                    : Color.fromARGB(255, 56, 61, 58),
                            minimumSize: const Size(400, 80)),
                        child: const Text(
                          'INTRODUCTION',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Lesson1()),
                          );
                          setState(() {
                            context.read<Colr>().setcl1();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Provider.of<Colr>(context).colr1
                                ? Colors.red
                                : Colors.white,
                            foregroundColor:
                                Provider.of<Colr>(context).bkgcol == 0
                                    ? Color.fromARGB(197, 47, 207, 235)
                                    : Color.fromARGB(255, 56, 61, 58),
                            minimumSize: const Size(400, 80)),
                        child: const Text(
                          'LESSON 1',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Lesson2()),
                          );
                          setState(() {
                            Provider.of<Colr>(context, listen: false).setcl2();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Provider.of<Colr>(context).colr2
                                ? Colors.red
                                : Colors.white,
                            foregroundColor:
                                Provider.of<Colr>(context).bkgcol == 0
                                    ? Color.fromARGB(197, 47, 207, 235)
                                    : Color.fromARGB(255, 56, 61, 58),
                            minimumSize: const Size(400, 80)),
                        child: const Text(
                          'LESSON 2',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Lesson3()),
                          );
                          setState(() {
                            context.read<Colr>().setcl3();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Provider.of<Colr>(context).colr3
                                ? Colors.red
                                : Colors.white,
                            foregroundColor:
                                Provider.of<Colr>(context).bkgcol == 0
                                    ? Color.fromARGB(197, 47, 207, 235)
                                    : Color.fromARGB(255, 56, 61, 58),
                            minimumSize: const Size(400, 80)),
                        child: const Text(
                          'LESSON 3',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Lesson4()),
                          );
                          setState(() {
                            Provider.of<Colr>(context, listen: false).setcl4();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Provider.of<Colr>(context).colr4
                                ? Colors.red
                                : Colors.white,
                            foregroundColor:
                                Provider.of<Colr>(context).bkgcol == 0
                                    ? Color.fromARGB(197, 47, 207, 235)
                                    : Color.fromARGB(255, 56, 61, 58),
                            minimumSize: const Size(400, 80)),
                        child: const Text(
                          'LESSON 4',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Lesson5()),
                          );
                          setState(() {
                            Provider.of<Colr>(context, listen: false).setcl5();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Provider.of<Colr>(context).colr5
                                ? Colors.red
                                : Colors.white,
                            foregroundColor:
                                Provider.of<Colr>(context).bkgcol == 0
                                    ? Color.fromARGB(197, 47, 207, 235)
                                    : Color.fromARGB(255, 56, 61, 58),
                            minimumSize: const Size(400, 80)),
                        child: const Text(
                          'LESSON 5',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                    ]))
                  //const VideoPlayerScreen()
                  : Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VideoPage(
                                            videoUrl:
                                                'https://youtu.be/1YyAzVmP9xQ',
                                            txt: ' INTRODUCTION ',
                                          )),
                                );
                                setState(() {
                                  Provider.of<Colr>(context, listen: false)
                                      .setclv0();
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Provider.of<Colr>(context).colrv0
                                          ? Colors.red
                                          : Colors.white,
                                  foregroundColor:
                                      Provider.of<Colr>(context).bkgcol == 0
                                          ? Color.fromARGB(197, 47, 207, 235)
                                          : Color.fromARGB(255, 56, 61, 58),
                                  minimumSize: const Size(400, 80)),
                              child: const Text(
                                ' INTRODUCTION ',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoPage(
                                      videoUrl: 'https://youtu.be/P7Eq03O-LwI',
                                      txt: ' YIELD FARMING ',
                                    ),
                                  ),
                                );
                                setState(() {
                                  Provider.of<Colr>(context, listen: false)
                                      .setclv1();
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Provider.of<Colr>(
                                    context,
                                  ).colrv1
                                      ? Colors.red
                                      : Colors.white,
                                  foregroundColor:
                                      Provider.of<Colr>(context).bkgcol == 0
                                          ? Color.fromARGB(197, 47, 207, 235)
                                          : Color.fromARGB(255, 56, 61, 58),
                                  minimumSize: const Size(400, 80)),
                              child: const Text(
                                ' YIELD FARMING ',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoPage(
                                      videoUrl: 'https://youtu.be/72dOJg58uDI',
                                      txt: ' STRATEGIES ',
                                    ),
                                  ),
                                );
                                setState(() {
                                  Provider.of<Colr>(context, listen: false)
                                      .setclv2();
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Provider.of<Colr>(
                                    context,
                                  ).colrv2
                                      ? Colors.red
                                      : Colors.white,
                                  foregroundColor:
                                      Provider.of<Colr>(context).bkgcol == 0
                                          ? Color.fromARGB(197, 47, 207, 235)
                                          : Color.fromARGB(255, 56, 61, 58),
                                  minimumSize: const Size(400, 80)),
                              child: const Text(
                                ' STRATEGIES ',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoPage(
                                      videoUrl: 'https://youtu.be/SQyg9pyJ1Ac',
                                      txt: ' COLD WALLETS ',
                                    ),
                                  ),
                                );
                                setState(() {
                                  Provider.of<Colr>(context, listen: false)
                                      .setclv3();
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Provider.of<Colr>(context).colrv3
                                          ? Colors.red
                                          : Colors.white,
                                  foregroundColor:
                                      Provider.of<Colr>(context).bkgcol == 0
                                          ? Color.fromARGB(197, 47, 207, 235)
                                          : Color.fromARGB(255, 56, 61, 58),
                                  minimumSize: const Size(400, 80)),
                              child: const Text(
                                ' COLD WALLETS ',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoPage(
                                      videoUrl: 'https://youtu.be/SEB2ra6BkaU',
                                      txt: ' CRYPTO WALLETS ',
                                    ),
                                  ),
                                );
                                setState(() {
                                  Provider.of<Colr>(context, listen: false)
                                      .setclv4();
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Provider.of<Colr>(context).colrv4
                                          ? Colors.red
                                          : Colors.white,
                                  foregroundColor:
                                      Provider.of<Colr>(context).bkgcol == 0
                                          ? Color.fromARGB(197, 47, 207, 235)
                                          : Color.fromARGB(255, 56, 61, 58),
                                  minimumSize: const Size(400, 80)),
                              child: const Text(
                                ' CRYPTO WALLETS ',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoPage(
                                      videoUrl: 'https://youtu.be/SSo_EIwHSd4',
                                      txt: 'BLOCKCHAIN',
                                    ),
                                  ),
                                );
                                setState(() {
                                  Provider.of<Colr>(context, listen: false)
                                      .setclv5();
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Provider.of<Colr>(context).colrv5
                                          ? Colors.red
                                          : Colors.white,
                                  foregroundColor:
                                      Provider.of<Colr>(context).bkgcol == 0
                                          ? Color.fromARGB(197, 47, 207, 235)
                                          : Color.fromARGB(255, 56, 61, 58),
                                  minimumSize: const Size(400, 80)),
                              child: const Text(
                                'BLOCKCHAIN',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                          ],
                        ),
                      ),
                    )),
          bottomNavigationBar: BottomNavigationBar(
            unselectedLabelStyle:
                const TextStyle(color: Colors.white, fontSize: 14),
            backgroundColor: Provider.of<Colr>(context).bkgcol == 0
                ? Color.fromARGB(197, 47, 207, 235)
                : Color.fromARGB(255, 56, 61, 58),
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

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(198, 204, 231, 236)
              : Color.fromARGB(102, 182, 193, 187),
          title: Text(
            'INTRODUCTION',
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
            child: Scrollbar(
              thumbVisibility: true, //always show scrollbar
              thickness: 10, //width of scrollbar
              radius: Radius.circular(20), //corner radius of scrollbar
              scrollbarOrientation:
                  ScrollbarOrientation.right, //which side to show scrollbar
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Image.network(
                          'https://img.etimg.com/thumb/width-420,height-315,imgsize-105512,resizemode-75,msid-98602302/markets/cryptocurrency/crypto-prices-today-live-news-bitcoin-dogecoin-ethereum-shibha-inu-cryptocurrency-latest-updates-13-march-2023/crypto-price-today-bitcoin-above-22k-crypto-market-cap-crosses-1-trillion.jpg'),
                      const Text(
                        'INTRODUCTION',
                        style: TextStyle(
                            shadows: [
                              Shadow(
                                blurRadius: 10.0, // shadow blur
                                color: Colors.black, // shadow color
                                offset: Offset(
                                    2.0, 2.0), // how much shadow will be shown
                              ),
                            ],
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        txt,
                        style: const TextStyle(shadows: [
                          Shadow(
                            blurRadius: 10.0, // shadow blur
                            color: Colors.black, // shadow color
                            offset: Offset(
                                2.0, 2.0), // how much shadow will be shown
                          ),
                        ], color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}

class Lesson1 extends StatelessWidget {
  const Lesson1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(198, 204, 231, 236)
              : Color.fromARGB(102, 182, 193, 187),
          title: Text(
            'LESSON 1',
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
            child: Scrollbar(
                thumbVisibility: true, //always show scrollbar
                thickness: 10, //width of scrollbar
                radius: Radius.circular(20), //corner radius of scrollbar
                scrollbarOrientation:
                    ScrollbarOrientation.right, //which side to show scrollbar
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.network(
                            'https://cdn.futura-sciences.com/sources/video/bitcoin-cryptomonnaie-interdiction-minage-chine.jpg'),
                        const Text(
                          'Lesson 1',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0, // shadow blur
                                  color: Colors.black, // shadow color
                                  offset: Offset(2.0,
                                      2.0), // how much shadow will be shown
                                ),
                              ],
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Fundamental analysis takes a deep dive into all the information available about a cryptocurrency. It uses a mix of both quantitative financial metrics and qualitative measures. Ultimately, the aim of fundamental analysis is to determine a cryptocurrency\’s intrinsic price. When you then compare that fundamental value to the current market price, you can see whether the crypto asset is either undervalued or overvalued. An undervalued asset can represent a buying opportunity, while an overvalued asset can signal it\’s time to take profits.\ Consider a meme coin like Dogecoin, does it have any intrinsic value? The technology entrepreneur Mark Cuban doesn\’t think so, saying “That\’s not to say [dogecoin] has any intrinsic value. It doesn\'t. However, when we apply the tools of fundamental analysis, we are more informed. So, what is Dogecoin? Firstly, we can see it lacks many fundamental value propositions like a roadmap, developer team, and even a whitepaper. Still, it does have a market cap worth tens of billions, hundreds of millions in 24-hour volume, and is one of the most known of any cryptocurrency. It even proved a use case when Mark Cuban\’s NBA team, the Dallas Mavericks, accepted it as a payment method for tickets. Clearly, it has an intrinsic value. While the fundamental analysis may indicate that at \$1 Dogecoin would be overvalued, at 5 cents it could be a great buy. Key information to inform fundamental analysis: Market cap Volume Tokenomics Total value locked Roadmap Team members Community size and engagement Rate of network growth Rate of adoption Whitepaper Use case 2. Technical analysis for cryptocurrency Technical analysis looks at past price movements in an attempt to determine which way the market is likely to move next. Is it going up? Down? Sideways? Technical analysis draws on a number of statistical indicators and patterns to determine the probability of each scenario. While traders use statistical metrics, they rely heavily on visual charts to help identify key signals, such as support and resistance. Ultimately, technical analysis is used to find buy and sell signals. It is important to note, traders using technical analysis never expect to be right all of the time. In fact, a trader that’s only correct 55% of the time can still be incredibly profitable. To manage risks for the times when the market moves contrary to what their indicators predicted, they use risk management practices, such as setting auto sells and investing only a portion of their holdings on a single trade. For example, consider the bitcoin chart above taken from TradingView in late July of 2021. The purple line in the lower third is the Relative Strength Index (RSI), which is an indicator that evaluates overbought or oversold conditions. In our market updates, Cointree\'s Technical Trading Analysts identified that it was entering oversold territory and we may see some profit taking. Next, our analyst noted the 50-day moving average was moving upwards, confirming what looked like a bullish trend. In summary, our analysts used technical trading tools to predict, that while we may see a short drop in price in the short term, the market would then most likely keep pushing higher. As you may remember, that is exactly what happened. Popular tools of fundamental analysis: Moving average convergence divergence (MACD) Relative Strength Index (RSI) Bitcoin price Simple Moving average (SMA) Moving Average (50,200) Crossover On-balance volume (OBV) 3. On-chain analysis for cryptocurrency On-chain analysis looks at the public data on the blockchain. It is an emerging field that is unique to the cryptocurrency space, with traders using it to better predict market moves and gauge market sentiment. Ultimately, traders use on-chain analysis to identify the reasons different market participants are buying and selling, such as miners selling to pay their bills or hedge funds taking profits. With on-chain analysis, traders look to see how different market participants are behaving, such as institutional investors, exchanges, miners and retail traders. They use a range of signals, including wallet balances, coin dormancy and transaction volume. As we can see on the chart above from Glassnode, the percentage of bitcoins held by miners and large holders has decreased significantly, while the number of coins held by everyday investors has increased substantially. This is an important metric as it shows that the network continues to become more and more decentralised over time. Moreover, the above chart can be used by traders to see how much influence that different market participants have over the price. As the co-founder and CTO of GlassNode, Rafael Schultzre-Kraft, reported, We have seen a significant increase of bitcoin whales (and their supply) since 2020. This suggests that institutional investors, funds, family offices, and other [high net worth individuals] HNWI have been entering the space. Insightful on-chain indicators include : Number of active addresses Number of transactions On-chain volume Hash rate Miner revenue Total value locked (TVL) Market value to realised value (MVRV) Network value to transaction (NVT) Realised cap Combining all three methods of analysis for successful cryptocurrency tradingWhile each of these methods of analysis is valuable on their own, they are even more powerful when used together. Alone, a single metric may not be instructive. But like a thousand tiny brush strokes, combining all of your analysis methods can paint a compelling picture of the market.Of course, you don\’t need all three to align to make a trade. Maintaining your risk management practices and allocating appropriately lets you move in and out of a position as the market changes.As we covered in our bitcoin success stories, the successful cryptocurrency hedge fund Three Arrows Capital mentioned in the intro were not always billionaire investors. They launched their fund from a kitchen table in their apartment using their own savings. Now, there is multiple Lamborghinis sitting in front of their own trading office.Having traded successfully for almost a decade, it is clear that their fortune was built on careful analysis and skilled trading rather than luck. And tellingly, they\’ve significantly outperformed the hodlers.",
                          style: TextStyle(shadows: [
                            Shadow(
                              blurRadius: 10.0, // shadow blur
                              color: Colors.black, // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ], color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}

class Lesson2 extends StatelessWidget {
  const Lesson2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(198, 204, 231, 236)
              : Color.fromARGB(102, 182, 193, 187),
          title: Text(
            'LESSON 2',
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
            child: Scrollbar(
                thumbVisibility: true, //always show scrollbar
                thickness: 10, //width of scrollbar
                radius: Radius.circular(20), //corner radius of scrollbar
                scrollbarOrientation:
                    ScrollbarOrientation.right, //which side to show scrollbar
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.network(
                            'https://www.cafedelabourse.com/wp-content/uploads/2022/09/crypto-monnaie-bitcoin-investir.jpg'),
                        const Text(
                          'Lesson 2',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0, // shadow blur
                                  color: Colors.black, // shadow color
                                  offset: Offset(2.0,
                                      2.0), // how much shadow will be shown
                                ),
                              ],
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "What Is Algorithmic Trading? Cryptocurrency Algorithmic Trading is a way of automating crypto trading strategies. This term has many synonyms: API trading, Algo Trading, High-Frequency Trading (HFT) or Crypto Bot Trading. However, all these terms mean basically the same — using a computer program to trade crypto instead of doing it manually. Automated crypto trading allows you to remove the emotional factor from the equation. This is achieved simply by instructing a computer how to trade and what algorithm trading strategies to follow. This type of trading allows you to trade multiple assets at the same time while using different strategies, helping you with portfolio diversification. Just think about how many assets can you realistically efficiently follow up without losing efficacy. How Algorithm Trading Works: Algorithmic trading is the use of computer programs and mathematical algorithms to automate the process of buying and selling assets, whether it be stocks or crypto. Algo trading relies on a set of rules or instructions, often based on statistical models and historical data, that determine when to buy or sell assets, how much to buy or sell, and at what price. A simple algo could be programmed to buy a certain cryptocurrency when its price falls below a certain threshold and then sell it when the price rises above a certain level. Once an algorithm has identified a trade opportunity, it sends an order to the trading platform, which automatically executes the trade based on the instructions in the algorithm. This process can happen in milliseconds, allowing algorithmic traders to take advantage even of the smallest price movements in the market. Here's an example... An algorithmic trading strategy for Bitcoin might involve buying when the price crosses a certain moving average, and selling when the price drops below another moving average. Of course, the algorithm may use additional technical indicators such as relative strength index (RSI), and Bollinger Bands, to identify entry and exit points for trades.The algorithm might buy Bitcoin when the price crosses above its 50-day moving average and sell it when the price drops below its 20-day moving average. Let's say the current price of Bitcoin is \$50,000, and the 20-day moving average is \$48,000 while the 50-day moving average is \$45,000. If the price of Bitcoin rises above \$50,000 and crosses its 50-day moving average, the algorithm would automatically execute a buy order. If the price then continues to rise, the algorithm would hold the position until the price drops below \$48,000 and the 20-day moving average. At this point, the algorithm would automatically execute a sell order to close the position and take a profit. Okay, But Does Algorithm Trading Work? Is Algorithm Trading Profitable? Numerous studies have shown that algorithmic trading can outperform human traders in terms of speed, accuracy, and consistency. However, the effectiveness of algorithmic trading ultimately depends on the quality of the algorithms and the ability of traders to properly design, test, and implement them. So, yes, algorithmic trading has the potential to be profitable, but nothing is guaranteed. The profitability of algo trading depends on a multitude of factors, such as the quality of the algorithms used, the amount of money invested, market conditions, and the ability of traders to manage risk effectively. When executed correctly, algorithmic trading can be a powerful tool for generating consistent profits over time. Do You Need Math For Algorithmic Trading? Now that we've mentioned math and numbers, it's important to address the question of whether you need math for algorithmic trading. The answer is yes, you need math to algo trade, since it relies heavily on mathematical and statistical models to analyze market data and identify trading opportunities. You, as a trader, need to have a solid understanding of math concepts such as probability, statistics, calculus, and linear algebra, and then apply these concepts to financial data to create models that can accurately predict market movements. Now, you may say something like: algorithms are difficult, it is not for me... The word crypto trading algo may look like a strong word, but it is, in fact, harmless. It simply refers to a trading bot, or robot, which trades for you automatically. Like with everything in life, there is variety, and you can use anything from broad pre-defined strategies or you can build your own. Complexity is a choice in this regard. An algorithm can be as simply defined as setting some basic rules to follow such as buying X when Y reaches this point and selling X when Y reaches that point. And, if you're wondering: how do I learn algorithm trading? To learn algo trading, you can start by building a solid foundation in mathematics, statistics, and computer programming. You can then explore some of the best algorithm trading strategies and develop your own algorithms using popular programming languages such as Python, MATLAB, or R. Additionally, there are many online courses, books, and forums dedicated to API trading that can help you expand your knowledge and skills in this field. And, how much does it cost to learn algorithmic trading? The cost can vary widely depending on a myriad of factors, such as the technology and data services required to run your algorithms. While it is possible to start with a relatively small amount, traders should be prepared to invest in high-quality data, software, and hardware to ensure that their algorithms can perform well.",
                          style: TextStyle(shadows: [
                            Shadow(
                              blurRadius: 10.0, // shadow blur
                              color: Colors.black, // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ], color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}

class Lesson3 extends StatelessWidget {
  const Lesson3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(198, 204, 231, 236)
              : Color.fromARGB(102, 182, 193, 187),
          title: Text(
            'LESSON 3',
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
            child: Scrollbar(
                thumbVisibility: true, //always show scrollbar
                thickness: 10, //width of scrollbar
                radius: Radius.circular(20), //corner radius of scrollbar
                scrollbarOrientation:
                    ScrollbarOrientation.right, //which side to show scrollbar
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.network(
                            'https://i-df.unimedias.fr/2019/07/31/cryptomonnaie.jpg?auto=format,compress&cs=tinysrgb'),
                        const Text(
                          'Lesson 3',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0, // shadow blur
                                  color: Colors.black, // shadow color
                                  offset: Offset(2.0,
                                      2.0), // how much shadow will be shown
                                ),
                              ],
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Staking is the best cryptocurrency passive income strategy. It involves holding a certain amount of cryptocurrency in a wallet or on an exchange and participating in the network\’s validation process by verifying transactions and adding new blocks to the blockchain. In return, stakers receive rewards in the form of newly minted coins or transaction fees. Benefits of Staking Passive income: Staking provides a way to earn crypto passive income without having to actively trade or manage your portfolio. Network participation: Staking helps to secure the network and maintain the integrity of the blockchain. Potential for capital appreciation: As the cryptocurrency market grows, the value of staked coins may appreciate, leading to increased profits. Risks of Staking Volatility: The value of staked coins can be highly volatile, leading to potential losses if the value of the coin drops significantly. Technical risks: Staking requires technical knowledge and expertise, and there is a risk of losing your staked coins if you make a mistake or your wallet is hacked. Centralization: If a small number of stakers control a sizable portion of the network\’s currency, staking may result in centralization and governance problems. 2. Masternodes Another best passive income with crypto is through masternodes. They are servers that help to maintain the blockchain network by performing certain functions such as validating transactions, enabling instant transactions, and voting on governance decisions. In return, masternode operators receive rewards in the form of newly minted coins or transaction fees. Benefits of Running a Masternode Passive income: By running a masternode, one can earn crypto passive income with minimal effort, without needing to actively manage their portfolio or engage in trading. Network participation: Masternodes help to secure the network and maintain the integrity of the blockchain. Potential for capital appreciation: As the cryptocurrency market grows, the value of masternode coins may appreciate, leading to increased profits. Additional features: Some masternode cryptocurrencies offer additional features such as privacy and instant transactions. Risks of Running a Masternode Technical expertise: Running a masternode requires technical knowledge and expertise, and there is a risk of losing your coins if you make a mistake or your server is hacked. High initial investment: Masternodes typically require a significant amount of coins to be locked up as collateral, which can be a barrier to entry for some investors. Centralization: If a small number of masternode operators control a sizable fraction of the coins in the network, this could lead to centralization and governance problems for the masternode system. 3. Yield Farming Yield farming is a relatively new method of earning passive income from crypto. It involves providing liquidity to decentralized finance (DeFi) platforms in exchange for rewards in the form of interest or tokens. Yield farmers can earn higher returns compared to traditional savings accounts or other passive income methods. How Yield Farming Works Yield farming involves depositing cryptocurrency into a liquidity pool, which is then used by other users to borrow or trade assets. The yield farmer earns rewards in the form of interest or tokens, which can be sold or reinvested. Benefits of Yield Farming Higher returns: Yield farming can provide higher returns compared to traditional savings accounts or other passive income methods. Diversification: Yield farming allows investors to diversify their cryptocurrency holdings and potentially earn income from multiple sources. Access to decentralized finance: Yield farming provides access to DeFi platforms, which can offer unique features such as transparency, immutability, and trustlessness. Risks of Yield Farming Volatility: The value of the tokens or interest earned from yield farming can be highly volatile, leading to potential losses if the value drops significantly. Impermanent loss: Yield farming involves providing liquidity to pools, which can lead to impermanent loss if the value of the deposited assets changes significantly. Smart contract risks: Yield farming requires interacting with smart contracts, which can be vulnerable to hacks or other technical issues. Complexity: Yield farming can be complex and requires technical knowledge and expertise to fully understand and mitigate risks. 4. Dividends Another way to earn passive income from crypto is through dividends or profit-sharing. Some cryptocurrencies distribute a portion of their profits to holders in the form of dividends, similar to how traditional stocks pay out dividends to shareholders. How Dividends Work in the Context of Cryptocurrency Dividends in the context of cryptocurrency work similarly to traditional dividends. Companies or projects distribute a portion of their profits to holders of their tokens or coins. Dividends can be distributed in different ways, such as through airdrops or direct payments to wallets. Benefits of Receiving Dividends Passive income: For those looking to avoid the hassle of active portfolio management or trading, dividend payments offer a lucrative opportunity to earn passive income. Potential for capital appreciation: As the cryptocurrency market grows, the value of dividend-paying coins may appreciate, leading to increased profits. Incentive for long-term holding: Dividends can provide an incentive for long-term holding of a particular cryptocurrency. Risks of Receiving Dividends Dependency on project success: Dividends are dependent on the success of the project or company, and there is a risk of not receiving any dividends if the project fails or underperforms. Volatility: Coins or tokens that provide dividends are susceptible to high volatility, which can lead to substantial losses if their value drops significantly. Lack of regulation: Dividends in the context of cryptocurrency are not regulated in the same way as traditional dividends, leading to potential scams or frauds.",
                          style: const TextStyle(shadows: [
                            Shadow(
                              blurRadius: 10.0, // shadow blur
                              color: Colors.black, // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ], color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}

class Lesson4 extends StatelessWidget {
  const Lesson4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(198, 204, 231, 236)
              : Color.fromARGB(102, 182, 193, 187),
          title: Text(
            'LESSON 4',
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
            child: Scrollbar(
                thumbVisibility: true, //always show scrollbar
                thickness: 10, //width of scrollbar
                radius: Radius.circular(20), //corner radius of scrollbar
                scrollbarOrientation:
                    ScrollbarOrientation.right, //which side to show scrollbar
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.network(
                            'https://idealogeek.fr/wp-content/uploads/2020/11/choisir-cryptomonnaie.jpg'),
                        const Text(
                          'Mining is the process of verifying transactions on a blockchain network and adding them to the public ledger. It involves using computational power to solve complex mathematical problems and earning rewards in the form of newly minted coins or transaction fees. Mining is an energy-intensive process that requires specialized hardware and software. How Mining Works Mining involves using specialized hardware, such as ASICs or GPUs, to solve complex mathematical problems and validate transactions on the blockchain network. Miners compete to be the first to solve the problem, and the winner is rewarded with newly minted coins or transaction fees. Benefits of Mining Passive income: Mining can provide a way to earn passive income by running mining hardware and earning rewards for verifying transactions. Decentralization: Mining plays a critical role in maintaining the security and decentralization of blockchain networks. Potential for capital appreciation: As the cryptocurrency market grows, the value of mined coins may appreciate, leading to increased profits. Risks of Mining High upfront costs: Mining requires specialized hardware and software, which can be expensive to purchase and maintain. Energy consumption: Mining is an energy-intensive process and can lead to high electricity bills and a significant carbon footprint. Competition: Mining has become increasingly competitive, with larger mining pools and more efficient hardware leading to decreased profitability for individual miners. Regulatory risks: Mining may face regulatory risks in some jurisdictions due to concerns about energy consumption or environmental impact. 6. Play-to-Earn Games Play-to-earn games are a new form of gaming that allows players to earn cryptocurrency rewards by playing the game. These games use blockchain technology to create in-game items and currencies that can be bought, sold, and traded for real-world value. How Play-to-Earn games Work Play-to-earn games use blockchain technology to create in-game items and currencies that can be bought, sold, and traded for real-world value. Players can earn these rewards by playing the game, completing tasks, or achieving specific milestones. Benefits of Participating in Play-to-earn Games Passive income: Play-to-earn games provide a way to earn passive income by playing games and earning cryptocurrency rewards. Opportunity for early adoption: Some play-to-earn games may have early adoption potential, allowing players to benefit from potential price appreciation of the in-game items or currencies.Fun and engaging gameplay: Play-to-earn games can be fun and engaging, providing a unique gaming experience. Risks of Participating in Play-to-earn Games Volatility: The value of in-game items and currencies can be highly volatile, leading to potential losses if the value drops significantly. Dependency on project success: The rewards in play-to-earn games are dependent on the project\’s success, which entails a risk of receiving no rewards if the project underperforms or fails. Conclusion : How to Make Passive Income With Crypto  There are many ways to make passive crypto income, including staking, masternodes, yield farming, dividends, mining, and play-to-earn games. Each of these methods has its own benefits and risks, and it’s important to do your research and understand the potential rewards and drawbacks before investing your time and money. Disclaimer: This material has been prepared for informational purposes only, and is not intended to provide, tax, legal, or financial advice. You should consult your own tax, legal, and accounting advisors before engaging in any transaction. Crypto Passive Income FAQs 1. How do I start best passive income with crypto? To start earning passive income with crypto, research and select a suitable investment strategy, and set up the necessary infrastructure to earn rewards. Popular strategies include staking, masternodes, yield farming, dividends, mining, and play-to-earn games. 2. Is crypto passive income safe? Crypto passive income can be safe, but it also comes with risks. The safety of your investment depends on the specific strategy you choose and the cryptocurrency you invest in. For example, staking and masternodes may be considered safer as they involve holding the cryptocurrency, while mining and yield farming may carry more risks due to market volatility and the potential for technical issues. 3. What is the fastest way to earn crypto? There is no guaranteed fastest way to earn crypto, as it ultimately depends on various factors such as market conditions, investment strategy, and the amount of capital invested. Some ways to potentially earn crypto faster include participating in airdrops, leveraging margin trading, or day trading. However, these methods also come with high risks and require a significant amount of knowledge and experience in the cryptocurrency market.',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0, // shadow blur
                                  color: Colors.black, // shadow color
                                  offset: Offset(2.0,
                                      2.0), // how much shadow will be shown
                                ),
                              ],
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          txt,
                          style: const TextStyle(shadows: [
                            Shadow(
                              blurRadius: 10.0, // shadow blur
                              color: Colors.black, // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ], color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}

class Lesson5 extends StatelessWidget {
  const Lesson5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(198, 204, 231, 236)
              : Color.fromARGB(102, 182, 193, 187),
          title: Text(
            'LESSON 5',
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
            child: Scrollbar(
                thumbVisibility: true, //always show scrollbar
                thickness: 10, //width of scrollbar
                radius: Radius.circular(20), //corner radius of scrollbar
                scrollbarOrientation:
                    ScrollbarOrientation.right, //which side to show scrollbar
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.network(
                            'https://cryptoast.fr/wp-content/uploads/2018/11/comprendre-crypto-monnaies.jpg'),
                        const Text(
                          'Bitcoin has not only been a trendsetter, ushering in a wave of cryptocurrencies built on a decentralized peer network—it has also become the de facto standard for cryptocurrencies, inspiring an ever-growing legion of followers and spinoffs.Because it is\'t the only cryptocurrency available, it is essential to look into others and find out which ones besides Bitcoin are doing well. Here are some cryptocurrencies that have held on throughout steep price climbs and nosedives.1. Ethereum (ETH) The first Bitcoin alternative on our list, Ethereum (ETH), is a decentralized software platform that enables smart contracts and decentralized applications (dApps) to be built and run without any downtime, fraud, control, or interference from a third party. The goal behind Ethereum is to create a decentralized suite of financial products that anyone in the world can freely access, regardless of nationality, ethnicity, or faith. 4 This aspect makes the implications for those in some countries more compelling because those without state infrastructure and state identifications can get access to bank accounts, loans, insurance, or a variety of other financial products. Ethereum uses ether, its platform-specific cryptographic token. Ether (ETH) is used to pay validators who stake their coins for their work for the blockchain, as a payment method off-chain, and as an investment by speculators.Ether, launched in 2015, is currently the second-largest digital currency by market capitalization after Bitcoin, although it lags behind the dominant cryptocurrency by a significant margin. Trading at around \$1,870 per ETH on April 23, 2023, ether\’s market cap of \$225 billion was less than half of Bitcoin\'s. 6 2. Tether (USDT) Tether (USDT) was one of the first and most popular of a group of so-called stablecoins—cryptocurrencies that aim to peg their market value to a currency or other external reference point to reduce volatility. Because most digital currencies, even major ones like Bitcoin, have experienced frequent periods of dramatic volatility, Tether and other stablecoins attempt to smooth out price fluctuations to attract users who may otherwise be cautious. Tether\’s price is tied directly to the U.S. dollar because the developers claim to hold one U.S. dollar for every circulating USDT. This system allows users to more easily make transfers from other cryptocurrencies back to U.S. dollars in a more timely manner than actually converting to standard currency. Launched in 2014, Tether describes itself as \“a blockchain-enabled platform...to make it easier to use fiat currency digitally.\” 7 Effectively, this cryptocurrency allows individuals to utilize a blockchain network and related technologies to transact in traditional currencies while minimizing the volatility and complexity often associated with digital currencies. As of April 23, 2023, Tether is the third-largest cryptocurrency by market capitalization, with a market cap of \$81.4 billion and a per token value of \$1.00. 8 3. Binance Coin (BNB) Binance Coin (BNB) is a utility cryptocurrency that operates as a payment method for the fees associated with trading on the Binance Exchange. It is the third-largest cryptocurrency by market capitalization.9 Those who use the token as a means of payment for the exchange can trade at a discount. Binance Coin\’s blockchain is also the platform on which Binance\’s decentralized exchange operates. The Binance Exchange was founded by Changpeng Zhao and is one of the most widely used exchanges in the world based on trading volumes.  Binance Coin was initially an ERC-20 token that operated on the Ethereum blockchain. It eventually had its own mainnet launch, and uses a PoS consensus model. As of April 23, 2023, Binance Coin has a \$51.5 billion market capitalization, with one BNB valued at around \$330. 8 4. USD Coin (USDC) Another stablecoin, USD Coin, also pegs its price to the U.S. dollar using fiat-collateralized reserves, which means it holds an amount of fiat currency equal to the amount of USD Coin in circulation. 10 USD Coin was launched in 2018 by the Centre Consortium, which consists of Circle and Coinbase. Because Circle is based in the U.S., it is subject to regulation, making USDC a regulated stablecoin. 11 As of April 23, 2023, USD Coin has a market cap of \$30.8 billion and a price per coin of \$1.00. 8 5. XRP XRP is the native token for the XRP Ledger, created as a payment system by Ripple in 2012. The XRP Ledger uses a consensus mechanism called the XRP Ledger Consensus Protocol, which doesn\'t use proof-of-work or proof-of-stake for consensus and validation. Instead, client applications sign and send transactions to the ledger servers. The servers then compare the transactions and conclude that the transactions are candidates for entry into the ledger. The servers then send the transaction candidates to validators, who work to agree that the servers got the transactions right and record the ledger version. 12 On April 23, 2023, XRP had a market cap of about \$24 billion and traded around \$0.47.8 6. Cardano (ADA) Cardano (ADA) is an “Ouroboros proof-of-stake” cryptocurrency created with a research-based approach by engineers, mathematicians, and cryptography experts. The project was co-founded by Charles Hoskinson, one of the five initial founding members of Ethereum. After disagreeing with the direction that Ethereum was taking, he left and later helped to create Cardano. The team behind Cardano created its blockchain through extensive experimentation and peer-reviewed research. The researchers behind the project have written more than 120 papers on blockchain technology across various topics. 13 This research is the backbone of Cardano. Due to this rigorous process, Cardano stands out among its PoS peers and other prominent cryptocurrencies. Cardano has also been dubbed an “Ethereum killer” because its blockchain is said to be capable of more. That said, Cardano is still in its early stages, with a long way to go regarding DeFi applications. Cardano aims to be the world\’s financial operating system by establishing DeFi products similar to Ethereum\'s. It hopes to provide solutions for chain interoperability, voter fraud, and legal contract tracing, among other things. As of April 23, 2023, Cardano had the sixth-largest market capitalization at \$13.5 billion, and one ADA traded for around \$0.39.8 7. Dogecoin (DOGE) Dogecoin (DOGE), seen by some as the original “memecoin,\” caused a stir in 2021 as its price skyrocketed. The coin, which uses an image of the Shiba Inu as its avatar, is accepted as a form of payment by some major companies. Dogecoin was created by two software engineers, Billy Markus and Jackson Palmer, in 2013. Markus and Palmer reportedly created the coin as a joke, commenting on the wild speculation of the cryptocurrency market. As of April 23, 2023, Dogecoin\’s market capitalization was \$11.1 billion, and one DOGE was valued at around \$0.08, making it the seventh-largest cryptocurrency. 8SHIB A memecoin inspired by a memecoin, Shiba Inu (SHIB), rose to prominence in the fall of 2021, briefly surpassing Dogecoin\'s market capitalization. 8. Polygon (MATIC) Polygon (MATIC) was initially developed as a layer-2 solution to address the issues with Ethereum network congestion and traffic. Recent innovations have allowed it to become a multi-chain system where blockchains can work together using Ethereum\'s virtual machine. Polygon uses three layers: Ethereum, Heimdall, and Bor. Bor is a block-producing layer that compiles transactions into blocks and creates a periodic snapshot of the blockchain. The validators on the Bor layer are called block producers. The blocks from the producers are aggregated by the Heimdall layer, which validates all of the blocks created since the Bor layer\'s last snapshot. It then creates a Merkle tree and publishes the Merkle root to the Ethereum mainnet. Polygon hosts smart contracts, dApps, NFTS, and has several other solutions for developers to choose from. On April 23, 2023, MATIC traded at \$1.01 and had a market cap of \$9.3 billions 8 9. Solana (SOL) Founded in 2017, Solana is a blockchain platform designed to support decentralized applications (dApps). Also referred to as an \'Ethereum killer,\' Solana performs many more transactions per second than Ethereum. Additionally, it charges lower transaction fees than Ethereum. Solana and Ethereum can utilize smart contracts, which are essential for running cutting-edge applications, including decentralized finance (DeFi) and non-fungible tokens (NFTs). The cryptocurrency running on the Solana blockchain is called Solana (SOL). Since its inception, its price has risen tremendously. Solana had a market capitalization of \$8.4 billion and was valued at around \$21 on April 23, 2023, making it the ninth-largest cryptocurrency by market cap. 810. Polkadot (DOT) Polkadot (DOT) is a PoS cryptocurrency aimed at delivering interoperability among other blockchains. Its protocol is designed to connect permissioned and permissionless blockchains and oracles to allow systems to work together under one roof. Polkadot\’s core component is its relay chain, which enables the interoperability of varying networks. It also provides for parachains—parallel blockchains with their own native tokens for specific-use cases. 14.Polkadot differs from Ethereum because rather than creating just dApps on Polkadot, developers can create their own blockchain while also using the security that Polkadot\’s chain already has. With Ethereum, developers can create new blockchains but need to create their own security measures, which can leave new and smaller projects open to attack because the larger a blockchain is, the more security it has. This concept in Polkadot is known as shared security.  Polkadot was created by Gavin Wood, another member of the core founders of the Ethereum project who had differing opinions about the project\’s future. As of April 23, 2023, Polkadot had a market capitalization of roughly \$7 billion, and one DOT traded for about \$5.90. 8 Honorable Mentions We were only able to list 10 altcoins above, but there are many other important cryptocurrencies out there, and they jockey for position over time in terms of user bases, market value, and influence. Some other important cryptocurrencies include (as of April 2023) but are not limited to: CoinMarketCap. \"Today\'s Cryptocurrency Prices by Market Cap.\"',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0, // shadow blur
                                  color: Colors.black, // shadow color
                                  offset: Offset(2.0,
                                      2.0), // how much shadow will be shown
                                ),
                              ],
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          txt,
                          style: const TextStyle(shadows: [
                            Shadow(
                              blurRadius: 10.0, // shadow blur
                              color: Colors.black, // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ], color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
