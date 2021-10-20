import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.green,
      child: Text(
        'INI HEADER',
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    );
  }
}
