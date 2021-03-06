import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kausar/cubit/auth_cubit.dart';
import 'package:kausar/pages/KAUSAR_UTS/onboarding.dart';
import 'data.dart';
import 'package:kausar/pages/KAUSAR_UTS/firelogin.dart';

class FireRegisterPage extends StatefulWidget {
  const FireRegisterPage({Key? key}) : super(key: key);

  @override
  _FireRegisterPageState createState() => _FireRegisterPageState();
}

class _FireRegisterPageState extends State<FireRegisterPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

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
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.arrow_back_rounded),
                ],
              ),
              onTap: () => {Navigator.pop(context)},
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
                      'Buat Akun Anda',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Anda sudah punya akun ? ',
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
              children: [Text('E-mail')],
            ),
            const SizedBox(
              height: 10,
            ),
            new TextField(
              controller: emailController,
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Color(0xffFFC33A)),
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
              children: [Text('Nama')],
            ),
            const SizedBox(
              height: 10,
            ),
            new TextField(
              controller: nameController,
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Color(0xffFFC33A)),
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
              child: BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthSuccess) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return onboarding();
                    }));
                  } else if (state is AuthFailed) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(state.error)));
                  }
                },
                builder: (context, state) {
                  if (state is AuthLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
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
                      context.read<AuthCubit>().signUp(
                          email: emailController.text,
                          name: nameController.text,
                          password: passwordController.text);
                    },
                    child: Text('Daftar Sekarang',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  );
                },
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
