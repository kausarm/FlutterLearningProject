import 'package:flutter/material.dart';
import 'package:kausar/pages/theme.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: newColor,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SafeArea(
            child: Center(
                child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image(
                  image: AssetImage('assets/images/splash.png'),
                  width: 200,
                  height: 200,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'GUADAGNA',
                          style: grup,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit.',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 250,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('LOGIN WITH FACEBOOK'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ))),
      ),
    );
  }
}
