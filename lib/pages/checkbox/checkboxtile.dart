import 'package:flutter/material.dart';

class Checkboxtile extends StatefulWidget {
  const Checkboxtile({Key? key}) : super(key: key);

  @override
  _CheckboxtileState createState() => _CheckboxtileState();
}

class _CheckboxtileState extends State<Checkboxtile> {
  final List<String> bahasa = ['Java', 'Kotlin', 'Dart'];
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  List<int> list = [];

  void onChanged1(value) {
    setState(() {
      this.selected1 = value;
    });
    if (value)
      list.add(0);
    else
      list.remove(0);
    print(list);
  }

  void onChanged2(value) {
    setState(() {
      this.selected2 = value;
    });
    if (value)
      list.add(1);
    else
      list.remove(1);
    print(list);
  }

  void onChanged3(value) {
    setState(() {
      this.selected3 = value;
    });
    if (value)
      list.add(2);
    else
      list.remove(2);
    print(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade600,
        title: Text('Demo checkBoxtile'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text('Pilih bahasa yang disukai: '),
            CheckboxListTile(
              value: this.selected1,
              onChanged: (value) {
                onChanged1(value);
              },
              title: Text(this.bahasa[0]),
              activeColor: Colors.red,
              secondary: Icon(Icons.language),
            ),
            CheckboxListTile(
              value: this.selected2,
              onChanged: (value) {
                onChanged2(value);
              },
              title: Text(this.bahasa[1]),
              activeColor: Colors.red,
              secondary: Icon(Icons.language),
            ),
            CheckboxListTile(
              value: this.selected3,
              onChanged: (value) {
                onChanged3(value);
              },
              title: Text(this.bahasa[2]),
              activeColor: Colors.red,
              secondary: Icon(Icons.language),
            ),
          ],
        ),
      ),
    );
  }
}
