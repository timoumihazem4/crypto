import 'package:crypto/auth.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String? errormessage = " ";
  bool isLogin = true;
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errormessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errormessage = e.message;
      });
    }
  }

  Widget _title() {
    return const Text(
      "LOGIN",
      style: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  Widget _entryField(String title, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        icon: const Icon(Icons.mail),
        labelText: title,
      ),
    );
  }

  Widget _entryField2(String title, TextEditingController controller) {
    return TextField(
      obscureText: true,
      controller: controller,
      decoration: InputDecoration(
        icon: const Icon(Icons.lock),
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
      onPressed:
          isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      child: Text(isLogin ? "LOGIN" : "REGISTER",
          style: TextStyle(
              color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }

  Widget _loginregisterbtn() {
    return TextButton(
        onPressed: () {
          setState(() {
            isLogin = !isLogin;
          });
        },
        child: Text(
            isLogin
                ? "you do not have an account"
                : "you allready have an account",
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
          backgroundColor: Colors.blueGrey,
          title: Text(
            isLogin ? "LOGIN" : "SIGNUP",
            style: const TextStyle(
                color: Color.fromARGB(255, 86, 6, 120),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0x665ac18e),
                  Color(0x995ac18e),
                  Color(0xcc5ac18e),
                  Color(0xff5ac18e),
                ])),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _entryField("email", _controllerEmail),
                  const SizedBox(
                    height: 20.0,
                  ),
                  _entryField2("password", _controllerPassword),
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
                    height: 20.0,
                  ),
                ])));
  }
}





// import 'package:crypto/home.dart';
// import 'package:crypto/signup.dart';
// import 'package:flutter/material.dart';


// class login extends StatefulWidget {
//   const login({super.key});

//   @override
//   State<login> createState() => _loginState();
// }

// class _loginState extends State<login> {
//   bool isRememberMe = false;
//   Widget buildEmail() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Email',
//           style: TextStyle(
//               color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Container(
//           alignment: Alignment.centerLeft,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: const [
//                 BoxShadow(
//                     color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
//               ]),
//           child: const TextField(
//             keyboardType: TextInputType.emailAddress,
//             style: TextStyle(
//               color: Colors.black87,
//             ),
//             decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.only(top: 14),
//                 prefixIcon: Icon(
//                   Icons.mail,
//                   color: Color(0xff5ac18e),
//                 ),
//                 hintText: 'Email',
//                 hintStyle: TextStyle(color: Colors.black38)),
//           ),
//         )
//       ],
//     );
//   }

//   Widget buildPassword() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Password',
//           style: TextStyle(
//               color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Container(
//           alignment: Alignment.centerLeft,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: const [
//                 BoxShadow(
//                     color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
//               ]),
//           child: const TextField(
//             obscureText: true,
//             style: TextStyle(
//               color: Colors.black87,
//             ),
//             decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.only(top: 14),
//                 prefixIcon: Icon(
//                   Icons.lock,
//                   color: Color(0xff5ac18e),
//                 ),
//                 hintText: 'Password',
//                 hintStyle: TextStyle(color: Colors.black38)),
//           ),
//         )
//       ],
//     );
//   }

//   Widget buildForgotPassword() {
//     return Container(
//       alignment: Alignment.centerRight,
//       padding: const EdgeInsets.only(right: 0),
//       child: InkWell(
//           onTap: () => print('forgot password pressed'),
//           child: const Text(
//             'Forgot Password ?',
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           )),
//     );
//   }

//   Widget buildRemember() {
//     return SizedBox(
//       height: 20,
//       child: Row(children: [
//         Theme(
//             data: ThemeData(unselectedWidgetColor: Colors.white),
//             child: Checkbox(
//                 value: isRememberMe,
//                 checkColor: Colors.green,
//                 activeColor: Colors.white,
//                 onChanged: (value) {
//                   setState(() {
//                     isRememberMe = value!;
//                   });
//                 }))
//       ]),
//     );
//   }

//   Widget buildioginbtn() {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 25),
//       width: double.infinity,
//       child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const home()),
//             );
//           },
//           child: const Text(
//             'Login',
//             style: TextStyle(
//                 color: Color(0xff5ac18e), fontWeight: FontWeight.bold),
//           )),
//     );
//   }

//   Widget buildSignup() {
//     return GestureDetector(
//       onTap: () => Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const signup()),
//       ),
//       child: RichText(
//           text: const TextSpan(children: [
//         TextSpan(
//             text: 'Don\'thave an account',
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500)),
//         TextSpan(
//             text: 'Sign Up',
//             style: TextStyle(
//                 color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))
//       ])),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(158, 158, 158, 1),
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         title: const Text(
//           'LOGIN',
//           style: TextStyle(
//               color: Color.fromARGB(255, 86, 6, 120),
//               fontSize: 35,
//               fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//           child: Stack(
//         children: <Widget>[
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                   Color(0x665ac18e),
//                   Color(0x995ac18e),
//                   Color(0xcc5ac18e),
//                   Color(0xff5ac18e),
//                 ])),
//             child: SingleChildScrollView(
//               physics: const AlwaysScrollableScrollPhysics(),
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'LOGIN',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   buildEmail(),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   buildPassword(),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   buildForgotPassword(),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   buildRemember(),
//                   buildioginbtn(),
//                   buildSignup(),
//                 ],
//               ),
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }
