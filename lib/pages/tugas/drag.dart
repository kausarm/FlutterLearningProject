import 'package:flutter/material.dart';

class Drag extends StatefulWidget {
  const Drag({Key? key}) : super(key: key);

  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<Drag> {
  Color warna1 = Colors.red;
  Color warna2 = Colors.green;
  Color warna3 = Colors.yellow;
  Color warna4 = Colors.cyan;
  Color warna5 = Colors.orange;
  Color warna6 = Colors.purple;
  Color warna7 = Colors.brown;
  Color warna8 = Colors.pink;
  Color targetWarna = Colors.black;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Latihan Dragable"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Draggable<Color>(
                data: warna1,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: warna1,
                    shape: StadiumBorder(),
                    elevation: 500,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 0,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: warna1.withOpacity(0.5),
                    shape: StadiumBorder(),
                    elevation: 0.7,
                  ),
                ),
              ),
              Draggable<Color>(
                data: warna2,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: warna2,
                    shape: StadiumBorder(),
                    elevation: 5,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 0,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: warna2.withOpacity(0.5),
                    shape: StadiumBorder(),
                    elevation: 0.7,
                  ),
                ),
              ),
              Draggable<Color>(
                data: warna3,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: warna3,
                    shape: StadiumBorder(),
                    elevation: 5,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 0,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: warna3.withOpacity(0.5),
                    shape: StadiumBorder(),
                    elevation: 0.7,
                  ),
                ),
              ),
              Draggable<Color>(
                data: warna4,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: warna4,
                    shape: StadiumBorder(),
                    elevation: 5,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 0,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: warna4.withOpacity(0.5),
                    shape: StadiumBorder(),
                    elevation: 0.7,
                  ),
                ),
              ),
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (value) => true,
            onAccept: (value) {
              isAccepted = true;
              targetWarna = value;
            },
            builder: (context, candidates, rejected) {
              return (isAccepted)
                  ? SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: targetWarna,
                        shape: StadiumBorder(),
                        elevation: 0.7,
                      ),
                    )
                  : SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: Colors.grey,
                        shape: StadiumBorder(),
                        elevation: 0,
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
