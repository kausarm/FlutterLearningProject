import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kausar/pages/KAUSAR_UTS/fireregister.dart';
import 'package:kausar/pages/KAUSAR_UTS/firelogin.dart';

class onboarding extends StatelessWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(50, 107, 50, 25),
          child: Column(
            children: [
              SizedBox(
                  width: 200,
                  height: 200,
                  child: Image(image: AssetImage('assets/images/pnl.png'))),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Selamat datang di E-learning \nPoliteknik Negeri Lhokseumawe'
                        .toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 87,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 18),
                    width: 110,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FireRegisterPage();
                        }));
                      },
                      child: Text(
                        'Daftar',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 18),
                    width: 110,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FireLoginPage();
                        }));
                      },
                      child: const Text('Masuk',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xffFFC33A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
