import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

const String _url = "https://www.boursedirect.fr/fr/marche/new-york";

class news extends StatefulWidget {
  const news({super.key});

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  Color backgroundColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'NEWS',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child:
            ElevatedButton(onPressed: _launchurl, child: Text('Discover NEWS')),
      ),
    );
  }
}

void _launchurl() async {
  if (!await launchUrlString(_url)) throw 'could not launch $_url';
}
