import 'package:flutter/material.dart';

class CheckboxOne extends StatefulWidget {
  const CheckboxOne({Key? key}) : super(key: key);

  @override
  _CheckboxOneState createState() => _CheckboxOneState();
}

class _CheckboxOneState extends State<CheckboxOne> {
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
        backgroundColor: Colors.deepOrange.shade400,
        title: Text("Demo checkbox type 1"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text('Pilih bahasa yang disukai : '),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.selected1,
                  onChanged: (value) {
                    onChanged1(value);
                  },
                ),
                Container(
                  width: 8.0,
                ),
                Text(this.bahasa[0])
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.selected2,
                  onChanged: (value) {
                    onChanged2(value);
                  },
                ),
                Container(
                  width: 8.0,
                ),
                Text(this.bahasa[1])
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                    value: this.selected3,
                    onChanged: (value) {
                      onChanged3(value);
                    }),
                Container(
                  width: 8.0,
                ),
                Text(this.bahasa[2])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
