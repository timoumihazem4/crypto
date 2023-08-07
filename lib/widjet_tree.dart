import 'package:crypto/auth.dart';
import 'package:crypto/homePro.dart';
import 'package:crypto/login.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePro(
              email: snapshot.data!.email.toString(),
            );
          } else {
            return const LogIn();
          }
        });
  }
}
