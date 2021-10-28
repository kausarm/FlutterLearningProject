import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  const Field({Key? key}) : super(key: key);

  @override
  _FieldState createState() => _FieldState();
}

class _FieldState extends State<Field> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  hoverColor: Colors.amber,
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  hintText: "Masukkan Nama",
                  labelText: "Nama Depan",
                ),
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
