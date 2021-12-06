import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kausar/cubit/auth_cubit.dart';
import 'package:kausar/pages/KAUSAR_UTS/fireregister.dart';
import 'package:kausar/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:kausar/pages/KAUSAR_UTS/matakuliah.dart';

class FireLoginPage extends StatefulWidget {
  const FireLoginPage({Key? key}) : super(key: key);

  @override
  _FireLoginPageState createState() => _FireLoginPageState();
}

class _FireLoginPageState extends State<FireLoginPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  bool isChecked = false;

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
                    const Text('Mohon masukkan Email dan Password untuk login',
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
              children: [Text('E-mail')],
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffFFC33A))),
                      hintText: "Masukkan E-mail",
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
              child: BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthSuccess) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Matakuliah();
                    }));
                  } else if (state is AuthFailed) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(state.error)));
                  }
                },
                builder: (context, state) {
                  return TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Color(0xffFFC33A),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    onPressed: () {
                      context.read<AuthCubit>().signIn(
                          email: emailController.text,
                          password: passwordController.text);
                    },
                    child: Text('Login Sekarang',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  );
                },
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
                    return FireRegisterPage();
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
