import 'dart:ui';

import 'package:flutter/material.dart';

class NewTimeOfDay extends StatefulWidget {
  const NewTimeOfDay({Key? key}) : super(key: key);

  @override
  _NewTimeOfDayState createState() => _NewTimeOfDayState();
}

class _NewTimeOfDayState extends State<NewTimeOfDay> {
  TimeOfDay time = TimeOfDay.now();

  Future<Null> selectDate(BuildContext context) async {
    var selected =
        await showTimePicker(context: context, initialTime: this.time);
    if (selected != null && selected != this.time) {
      setState(() {
        this.time = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent.shade700,
        title: Text('Demo Time of Day'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Waktu yang dipilih : ${this.time.toString()}',
              style: TextStyle(fontSize: 26),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              color: Colors.blueGrey,
              child: Text('Pilih Waktu'),
              onPressed: () {
                selectDate(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
