import 'package:flutter/material.dart';
import 'package:kausar/pages/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
                child: Image(image: AssetImage('assets/images/profile.png'))),
            Container(
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)))
          ],
        ),
      ),
    );
  }
}
