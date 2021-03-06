import 'dart:ui';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'package:kausar/pages/KAUSAR_UTS/matakuliah.dart';
import 'package:kausar/pages/KAUSAR_UTS/onboarding.dart';
import 'package:kausar/pages/KAUSAR_UTS/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  bool isChecked = false;

  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.green;
    }

    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.fromLTRB(30, 30, 30, 47),
        child: Column(
          children: [
            InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.arrow_back_rounded),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat datang di Login',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Mohon masukkan Nama dan Password untuk login',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5F5F5F))),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [Text('Nama')],
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              child: Column(
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffFFC33A))),
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
                    controller: passwordController,
                    obscureText: true,
                    decoration: new InputDecoration(
                      hoverColor: Color(0xffFFC33A),
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Color(0xffFFC33A)),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffFFC33A))),
                      hintText: "*****************",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15,
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
                onPressed: () {
                  data.forEach((e) {
                    nameController.text != e
                        ? Alert(
                            context: context,
                            type: AlertType.error,
                            title: "Login Gagal",
                            desc: '${nameController.text} tidak terdaftar',
                          ).show()
                        : Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                            return Matakuliah();
                          }));
                  });
                },
                child: Text('Login Sekarang',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 28,
                child: Text(
                  'Belum punya akun ?',
                  style: TextStyle(fontSize: 12, color: Colors.lightGreen),
                )),
            SizedBox(
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterPage();
                  }));
                },
                child: Text('Daftar Sekarang',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    )));
  }
}
