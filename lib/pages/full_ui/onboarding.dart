import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.fromLTRB(68, 32, 69, 25),
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/images/eassets/splash1.png'),
                width: 223,
                height: 273,
              ),
            )
          ],
        ),
      )),
    );
  }
}
