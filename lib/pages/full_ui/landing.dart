import 'package:flutter/material.dart';
import 'package:kausar/pages/full_ui/login.dart';
// import 'package:kausar/pages/full_ui/onboarding.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Login(),
    );
  }
}
