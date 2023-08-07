import 'package:crypto/backend/providers/colors.dart';
import 'package:crypto/homePro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImgSelect extends StatefulWidget {
  const ImgSelect({super.key});

  @override
  State<ImgSelect> createState() => _ImgSelectState();
}

class _ImgSelectState extends State<ImgSelect> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Provider.of<Colr>(context).bkgcol == 0
            ? Color.fromARGB(198, 204, 231, 236)
            : Color.fromARGB(102, 182, 193, 187),
        title: Text(
          'PHOTO URL SELECTION',
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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Put your Profile photo URL hier :',
            style: TextStyle(
                color: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
                icon: Icon(Icons.photo),
                labelText: "URL",
                hoverColor: Colors.white54,
                fillColor: Colors.white54),
          ),
          const SizedBox(
            height: 60.0,
          ),
          ElevatedButton.icon(
            icon: Icon(
              Icons.photo,
              color: Provider.of<Colr>(context).bkgcol == 0
                  ? Color.fromARGB(197, 47, 207, 235)
                  : Color.fromARGB(255, 56, 61, 58),
              size: 24.0,
            ),
            label: const Text(
              'CONFERM',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              debugPrint("text input ${_controller.text}");
              FirebaseAuth.instance.currentUser!
                  .updatePhotoURL(_controller.text);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePro(
                          email: FirebaseAuth.instance.currentUser!.email ?? "",
                        )),
              );
            },
            style: ElevatedButton.styleFrom(
                //backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                foregroundColor: Provider.of<Colr>(context).bkgcol == 0
                    ? Color.fromARGB(197, 47, 207, 235)
                    : Color.fromARGB(255, 56, 61, 58),
                minimumSize: const Size(200, 80)),
          ),
        ]),
      ),
    );
  }
}
