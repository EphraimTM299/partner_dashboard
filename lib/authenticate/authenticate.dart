// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'package:store_responsive_dashboard/authenticate/sign_in/sign_in_page.dart';
import 'package:store_responsive_dashboard/authenticate/sign_up/sign_up_screen.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignInPage(toggleView: toggleView);
    } else {
      return SignUpScreen(toggleView: toggleView);
    }
  }
}
