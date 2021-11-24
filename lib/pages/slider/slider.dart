import 'package:flutter/material.dart';

class SliderNew extends StatefulWidget {
  const SliderNew({Key? key}) : super(key: key);

  @override
  _SliderNewState createState() => _SliderNewState();
}

class _SliderNewState extends State<SliderNew> {
  double sliderValue = 0.0;

  void onChanged(value) {
    setState(() {
      this.sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent.shade400,
        title: Text("Demo Slider"),
      ),
      body: Container(
        padding: new EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text('Nilai aktif: ${sliderValue.round()}'),
            Slider(
                min: 0.0,
                max: 100.0,
                value: this.sliderValue,
                onChanged: (value) {
                  onChanged(value);
                })
          ],
        ),
      ),
    );
  }
}
