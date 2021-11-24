import 'package:flutter/material.dart';

class CheckboxDua extends StatefulWidget {
  const CheckboxDua({Key? key}) : super(key: key);

  @override
  _CheckboxDuaState createState() => _CheckboxDuaState();
}

class _CheckboxDuaState extends State<CheckboxDua> {
  bool selected = false;

  void onTextFieldChanged(String value) {
    setState(() {
      print(value);
    });
  }

  void onCheckboxChanged(value) {
    setState(() {
      this.selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade500,
        title: Text('Demo Checkbox'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              enabled: !this.selected,
              onChanged: (String value) {
                onTextFieldChanged(value);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Inputkan Text Disini',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.normal,
                  )),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.selected,
                  onChanged: (value) {
                    onCheckboxChanged(value);
                  },
                ),
                Text('Disable input box'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
