import 'package:flutter/material.dart';
import 'package:kausar/pages/full_ui/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.fromLTRB(30, 30, 30, 47),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.arrow_back_rounded),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Create your account',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Do you already have account ? ',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5F5F5F))),
                        Link(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [Text('Username')],
            ),
            const SizedBox(
              height: 10,
            ),
            new TextField(
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Color(0xffFFC33A)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Masukkan Username",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [Text('E-mail')],
            ),
            const SizedBox(
              height: 10,
            ),
            new TextField(
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Color(0xffFFC33A)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Masukkan Nama",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [Text('Password')],
            ),
            const SizedBox(
              height: 10,
            ),
            new TextField(
              obscureText: true,
              decoration: new InputDecoration(
                hoverColor: Color(0xffFFC33A),
                border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Color(0xffFFC33A)),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                hintText: "*****************",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 55,
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Color(0xffFFC33A),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                onPressed: () {},
                child: Text('Login Now',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
          ],
        ),
      ),
    )));
  }

  InkWell Link() {
    return InkWell(
      child:
          Text('Sign In', style: TextStyle(color: Colors.purple, fontSize: 14)),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
