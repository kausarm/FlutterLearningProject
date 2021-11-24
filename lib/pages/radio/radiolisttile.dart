import 'package:flutter/material.dart';

class RadioDua extends StatefulWidget {
  const RadioDua({Key? key}) : super(key: key);

  @override
  _RadioDuaState createState() => _RadioDuaState();
}

class _RadioDuaState extends State<RadioDua> {
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
        title: Text('Demo Radio TextTile'),
      ),
      body: Container(
        padding: new EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text('Pilih Jenis kelamin: '),
            RadioListTile(
              value: 0,
              groupValue: this.selected,
              onChanged: (value) {
                onChanged(value);
              },
              title: Text('pria'),
              activeColor: Colors.amberAccent,
              secondary: Icon(Icons.group),
            )
          ],
        ),
      ),
    );
  }
}
