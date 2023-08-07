import 'package:crypto/auth.dart';
import 'package:crypto/widjet_tree.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:crypto/backend/providers/colors.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? errormessage = " ";
  bool isLogin = true;
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerPassword2 = TextEditingController();
  final TextEditingController _controllerUserName = TextEditingController();

  Future<void> createUserWithEmailAndPassword() async {
    try {
      if (_controllerPassword.text == _controllerPassword2.text) {
        await Auth().createUserWithEmailAndPassword(
            email: _controllerEmail.text, password: _controllerPassword.text);
        FirebaseAuth.instance.currentUser!
            .updateDisplayName(_controllerUserName.text);
      } else {
        errormessage = " Inconfermed PASSWORD ! ";
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        errormessage = e.message;
      });
    }
  }

  Widget _title() {
    return const Text(
      "SIGNUP",
      style: TextStyle(
          color: Color.fromARGB(255, 28, 198, 217),
          fontSize: 16,
          fontWeight: FontWeight.bold),
    );
  }

  Widget _entryField(String title, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        icon: Icon(
          Icons.mail,
          color: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(197, 47, 207, 235)
              : Color.fromARGB(255, 56, 61, 58),
        ),
        labelText: title,
      ),
    );
  }

  Widget _entryField1(String title, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        icon: Icon(
          Icons.account_circle,
          color: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(197, 47, 207, 235)
              : Color.fromARGB(255, 56, 61, 58),
        ),
        labelText: title,
      ),
    );
  }

  Widget _entryField2(String title, TextEditingController controller) {
    return TextField(
      obscureText: true,
      controller: controller,
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(197, 47, 207, 235)
              : Color.fromARGB(255, 56, 61, 58),
        ),
        labelText: title,
      ),
    );
  }

  Widget _errorMessage() {
    return Text(errormessage == '' ? '' : 'Humm ? $errormessage',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold));
  }

  Widget _submittbtn() {
    return ElevatedButton(
      onPressed: createUserWithEmailAndPassword,
      child: Text("REGISTER",
          style: TextStyle(
              color: Provider.of<Colr>(context).bkgcol == 0
                  ? Color.fromARGB(197, 47, 207, 235)
                  : Color.fromARGB(255, 56, 61, 58),
              fontSize: 16,
              fontWeight: FontWeight.bold)),
    );
  }

  Widget _loginregisterbtn() {
    return TextButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const WidgetTree()),
          );
        },
        child: Text("you allready have an account",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(158, 158, 158, 1),
        appBar: AppBar(
          backgroundColor: Provider.of<Colr>(context).bkgcol == 0
              ? Color.fromARGB(198, 204, 231, 236)
              : Color.fromARGB(102, 182, 193, 187),
          title: Text(
            "SIGNUP",
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
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
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
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _entryField1("USERNAME", _controllerUserName),
                    const SizedBox(
                      height: 20.0,
                    ),
                    _entryField("EMAIL", _controllerEmail),
                    const SizedBox(
                      height: 20.0,
                    ),
                    _entryField2("PASSWORD", _controllerPassword),
                    const SizedBox(
                      height: 20.0,
                    ),
                    _entryField2("Conferm PASSWORD", _controllerPassword2),
                    const SizedBox(
                      height: 20.0,
                    ),
                    _errorMessage(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    _submittbtn(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    _loginregisterbtn(),
                    const SizedBox(
                      height: 15.0,
                    ),
                  ]),
            )));
  }
}
