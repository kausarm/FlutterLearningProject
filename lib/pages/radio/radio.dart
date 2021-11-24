import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({Key? key}) : super(key: key);

  @override
  _RadiobuttonState createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  int selected = -1;
  void onChanged(value) {
    setState(() {
      this.selected = value;
    });
    print('Pilihan: ${this.selected}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade400,
        title: Text('Demo Radio button'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text('Pilih Jenis Kelamin:'),
            Row(
              children: [
                Radio(
                    value: 99,
                    groupValue: this.selected,
                    onChanged: (value) {
                      onChanged(value);
                    }),
                Container(
                  width: 8.0,
                ),
                Text("Wanita")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
