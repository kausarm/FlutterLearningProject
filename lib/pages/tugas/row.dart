import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rowtugas extends StatelessWidget {
  const Rowtugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(15),
                  border: Border.all(color: Colors.red, width: 3)),
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Column in Row',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
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
                            child: Text('Blue Button'),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.green,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            onPressed: () {},
                            child: Text('Green Button'),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.access_time_rounded,
                                  size: 50,
                                  color: Colors.green,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.zoom_in_rounded,
                                  size: 50,
                                  color: Colors.yellow,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.traffic_outlined,
                                  size: 50,
                                  color: Colors.red,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.health_and_safety,
                                  size: 50,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ))),
    );
  }
}
