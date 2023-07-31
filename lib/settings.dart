import 'package:crypto/backend/providers/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'SETTINGS',
            style: TextStyle(
                color: Color.fromARGB(255, 86, 6, 120),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
            color: Provider.of<Colr>(context).bkgcol,
            width: double.infinity,
            height: double.infinity,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Center(
                child: Text(
                  'Background Color :',
                  style: TextStyle(
                      color: Color.fromARGB(255, 86, 6, 120),
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<Colr>().bkgreen();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 9, 203, 86),
                    foregroundColor: const Color.fromARGB(255, 32, 2, 69),
                    minimumSize: const Size(200, 80)),
                child: const Text(
                  'green',
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
                    backgroundColor: Color.fromARGB(255, 8, 8, 8),
                    foregroundColor: Color.fromARGB(255, 188, 171, 209),
                    minimumSize: const Size(200, 80)),
                child: const Text(
                  'BLACK',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<Colr>().bkggrey();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 129, 133, 130),
                    foregroundColor: Color.fromARGB(255, 32, 6, 63),
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
