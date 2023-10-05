// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/LogIn.dart';

class authenticate extends StatefulWidget {
  const authenticate({super.key});

  @override
  State<authenticate> createState() => _authenticateState();
}

class _authenticateState extends State<authenticate> {
  // bool showSignIn = true;

  // void toggleview() {
  //   setState(() => showSignIn = !showSignIn);
  // }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    // if (showSignIn) {
    //   return Login();
    // } else {
    //   return Register(toggleview: toggleview);
    // }
    return const Login();
  }
}
