import 'package:flutter/material.dart';
import 'package:kausar/pages/Validation/validation.dart';

class NewForm extends StatefulWidget {
  const NewForm({Key? key}) : super(key: key);

  @override
  _NewFormState createState() => _NewFormState();
}

class _NewFormState extends State<NewForm> {
  var validation;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: validation, //validator aama
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
    );
  }
}
