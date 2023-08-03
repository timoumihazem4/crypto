import 'package:crypto/backend/providers/colors.dart';
import 'package:crypto/backend/providers/prices_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  String note1 = "", note2 = "", note3 = "";
  Widget balnote() {
    //if (Provider.of<Prices>(context, listen: false).balance != 100000)
    return Card(
        child: SizedBox(
      width: 1200,
      height: 70,
      child: Text(
          "     Your account balance is ${Provider.of<Prices>(context, listen: false).balance}",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    ));
  }

  Widget bnbnote() {
    if (Provider.of<Prices>(context, listen: false).bnbprice > 240) {
      setState(() {
        note1 =
            "    Elevated value of BNB : ${Provider.of<Prices>(context, listen: false).bnbprice}";
      });
    } else if (Provider.of<Prices>(context, listen: false).bnbprice < 230) {
      setState(() {
        note1 =
            "   Low value of BNB : ${Provider.of<Prices>(context, listen: false).bnbprice}";
      });
    } else {
      setState(() {
        note1 =
            "    Stablised value of BNB : ${Provider.of<Prices>(context, listen: false).bnbprice}";
      });
    }
    return Card(
      child: SizedBox(
          width: 1400,
          height: 50,
          child: Text(
            note1,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget ethnote() {
    if (Provider.of<Prices>(context, listen: false).ethprice > 1900) {
      setState(() {
        note2 =
            "    Elevated value of ETH : ${Provider.of<Prices>(context, listen: false).ethprice}";
      });
    } else if (Provider.of<Prices>(context, listen: false).ethprice < 1800) {
      setState(() {
        note2 =
            "    Low value of ETH : ${Provider.of<Prices>(context, listen: false).ethprice}";
      });
    } else {
      setState(() {
        note2 =
            "     Stablised value of ETH : ${Provider.of<Prices>(context, listen: false).ethprice}";
      });
    }
    return Card(
      child: SizedBox(
          width: 1200,
          height: 50,
          child: Text(
            note2,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget btcnote() {
    if (Provider.of<Prices>(context, listen: false).btcprice > 29300) {
      setState(() {
        note3 =
            "     Elevated value of BTC : ${Provider.of<Prices>(context, listen: false).btcprice}";
      });
    } else if (Provider.of<Prices>(context, listen: false).btcprice < 29200) {
      setState(() {
        note3 =
            "     Low value of BTC : ${Provider.of<Prices>(context, listen: false).btcprice}";
      });
    } else {
      setState(() {
        note3 =
            "     Stablised value of BTC : ${Provider.of<Prices>(context, listen: false).btcprice}";
      });
    }
    return Card(
      child: SizedBox(
          width: 1200,
          height: 50,
          child: Text(
            note3,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'NOTIFICATIONS',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Provider.of<Colr>(context).bkgcol == 0
              ? Colors.green
              : Provider.of<Colr>(context).bkgcol == 1
                  ? Colors.black
                  : Colors.grey,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 1,
              ),
              balnote(),
              SizedBox(
                height: 2,
              ),
              bnbnote(),
              SizedBox(
                height: 1,
              ),
              ethnote(),
              SizedBox(
                height: 4,
              ),
              btcnote(),
              SizedBox(
                height: 4,
              ),
            ]),
          ),
        ));
  }
}
