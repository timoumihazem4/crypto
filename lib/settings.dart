import 'package:crypto/backend/providers/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(198, 204, 231, 236)
              : Color.fromARGB(102, 182, 193, 187),
          title: Text(
            'SETTINGS',
            style: TextStyle(
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
                fontSize: 35,
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: Text(
                  'Background Color :',
                  style: TextStyle(
                      color: Provider.of<Colr>(context).bkgcol == 0
                          ? Color.fromARGB(197, 47, 207, 235)
                          : Color.fromARGB(255, 56, 61, 58),
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<Colr>().bkgind();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(197, 47, 207, 235),
                    foregroundColor: Color.fromARGB(197, 238, 243, 244),
                    minimumSize: const Size(200, 80)),
                child: const Text(
                  'BLUE',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<Colr>().bkgblk();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(204, 125, 142, 133),
                    foregroundColor: Color.fromARGB(204, 242, 245, 244),
                    minimumSize: const Size(200, 80)),
                child: const Text(
                  'GREY',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ])));
  }
}
