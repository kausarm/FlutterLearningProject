import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:kausar/pages/full_ui/register.dart';
import 'package:kausar/pages/theme.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.arrow_forward_rounded),
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
                      'Welcome to Login',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Please fill E-mail & password to login your',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5F5F5F))),
                    Row(
                      children: [
                        Text('app account. ',
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
                onPressed: () {},
                child: Text('Login Now',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18),
                  width: 140,
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage("assets/images/gl.png"),
                      width: 30,
                      height: 30,
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 18),
                  width: 140,
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    child: const Image(
                      image: AssetImage("assets/images/fb.png"),
                      width: 30,
                      height: 30,
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    )));
  }

  InkWell Link() {
    return InkWell(
      child:
          Text('Sign Up', style: TextStyle(color: Colors.purple, fontSize: 14)),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return RegisterPage();
        }));
      },
    );
  }
}
