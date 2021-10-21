import 'package:flutter/material.dart';
import 'dart:math';

class animated_container extends StatefulWidget {
  const animated_container({Key? key}) : super(key: key);

  @override
  _animated_containerState createState() => _animated_containerState();
}

class _animated_containerState extends State<animated_container> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Mencoba Animated Container"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {} //
                ); //stateState
          },
          child: AnimatedContainer(
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                random.nextInt(256)), //colorfromrgb
            duration: Duration(seconds: 1),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
          ),
        ),
      ),
    );
  }
}
