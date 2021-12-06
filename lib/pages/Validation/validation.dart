import 'package:flutter/material.dart';

class validation extends StatefulWidget {
  const validation({Key? key}) : super(key: key);

  @override
  _validationState createState() => _validationState();
}

class _validationState extends State<validation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent.shade700,
        title: Text('Auto Validasi'),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(8.0),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: validatorNama, //validator aama
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber)),
                      labelText: 'Nama',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: validatorNomorInduk, //validator nomor induk
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'NIM',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: validatorEmail, //validator email
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String validatorNama(value) {
  if (value.length < 3)
    return 'Nama harus lebih dari 2 huruf';
  else
    return '';
}

String validatorNomorInduk(value) {
  if (value.length != 11)
    return 'Nomor Induk harus 11 digit';
  else
    return '';
}

String validatorEmail(value) {
  var pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Masukan Email yang benar';
  else
    return '';
}
