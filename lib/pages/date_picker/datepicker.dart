import 'package:flutter/material.dart';
import 'package:flutter/src/material/date_picker.dart';

class DatePickerNew extends StatefulWidget {
  const DatePickerNew({Key? key}) : super(key: key);

  @override
  _DatePickerNewState createState() => _DatePickerNewState();
}

class _DatePickerNewState extends State<DatePickerNew> {
  DateTime date = DateTime.now();

  Future<Null> selectDate(BuildContext context) async {
    var selected = await showDatePicker(
      context: context,
      initialDate: this.date,
      firstDate: DateTime(2019),
      lastDate: DateTime(2030),
    );
    if (selected != null && selected != this.date) {
      setState(() {
        this.date = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent.shade400,
        title: Text("Demo showDatePicker"),
      ),
      body: Container(
        padding: new EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text('Tanggal yang dipilih: ${this.date.toString()}'),
            RaisedButton(
                child: Text("Pilih Tanggal"),
                onPressed: () => {
                      selectDate(context),
                    })
          ],
        ),
      ),
    );
  }
}
