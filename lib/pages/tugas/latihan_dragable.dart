import 'package:flutter/material.dart';

class DragAble extends StatefulWidget {
  const DragAble({Key? key}) : super(key: key);

  @override
  _DragAbleState createState() => _DragAbleState();
}

class _DragAbleState extends State<DragAble> {
  Color color1 = Colors.yellow;
  Color color2 = Colors.green;
  bool isAccepted = false;
  Color targetColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Latihan Dragable'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Draggable<Color>(
                data: color1,
                child: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: Colors.pinkAccent,
                    shape: StadiumBorder(),
                    elevation: 5,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: color2,
                    shape: const StadiumBorder(),
                    elevation: 5,
                  ),
                ),
                feedback: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: Colors.purple,
                    shape: StadiumBorder(),
                    elevation: 5,
                  ),
                ),
              ),
              Draggable<Color>(
                data: color1,
                child: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: Colors.pinkAccent,
                    shape: StadiumBorder(),
                    elevation: 5,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: Colors.deepOrangeAccent,
                    shape: const StadiumBorder(),
                    elevation: 5,
                  ),
                ),
                feedback: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: Colors.purple,
                    shape: StadiumBorder(),
                    elevation: 5,
                  ),
                ),
              )
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (value) => true,
            onAccept: (value) {
              isAccepted = true;
              targetColor = value;
            },
            builder: (context, candidate, rejected) {
              return (isAccepted)
                  ? const SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: Colors.purpleAccent,
                        shape: StadiumBorder(),
                        elevation: 5,
                      ),
                    )
                  : const SizedBox(
                      width: 150,
                      height: 100,
                      child: Material(
                        color: Colors.lightBlue,
                        shape: StadiumBorder(),
                        elevation: 5,
                      ),
                    );
            },
          )
        ],
      ),
    );
  }
}
