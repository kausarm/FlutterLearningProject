import 'package:flutter/material.dart';
import 'package:kausar/pages/payment_app/Header.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Header(),
    );
  }
}
