import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Stetfull extends StatefulWidget {
  const Stetfull({Key? key}) : super(key: key);

  @override
  _StetfullState createState() => _StetfullState();
}

class _StetfullState extends State<Stetfull> {
  bool _isTap = false;

  void tekan() {
    setState(() {
      _isTap = true;
    });
  }

  void reset() {
    setState(() {
      _isTap = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: _isTap
                        ? Image(
                            image: AssetImage('assets/images/splash.png'),
                            width: 200,
                            height: 200,
                          )
                        : Text(
                            'Tombol Tidak Ditekan',
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    onPressed: () => {
                      reset(),
                    },
                    child: Text('RESET'),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    onPressed: () => {
                      tekan(),
                    },
                    child: Text('TEKAN UNTUK MELIHAT GAMBAR'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
