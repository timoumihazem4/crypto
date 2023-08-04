import 'package:crypto/accountr.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isRememberMe = false;
  Widget buildnumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Credit card number',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.credit_card,
                  color: Color.fromARGB(255, 126, 132, 129),
                ),
                hintText: 'Credit card number',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget build6number() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'SECRET NUMBER (8 numbers)',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 126, 132, 129),
                ),
                hintText: 'Secret Number',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildRemember() {
    return SizedBox(
      height: 20,
      child: Row(children: [
        Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.black54,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value!;
                  });
                }))
      ]),
    );
  }

  Widget buildbtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const AccountR()),
            );
          },
          child: const Text(
            'REAL ACCOUNT',
            style:
                TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(158, 158, 158, 1),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Payment',
          style: TextStyle(
              color: Color.fromARGB(255, 86, 6, 120),
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
          child: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
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
              physics: const AlwaysScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Payment',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  buildnumber(),
                  const SizedBox(
                    height: 20,
                  ),
                  build6number(),
                  const SizedBox(
                    height: 20,
                  ),
                  buildRemember(),
                  buildbtn(),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
