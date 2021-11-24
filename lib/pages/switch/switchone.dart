import 'package:flutter/material.dart';

class SwitchOne extends StatefulWidget {
  const SwitchOne({Key? key}) : super(key: key);

  @override
  _SwitchOneState createState() => _SwitchOneState();
}

class _SwitchOneState extends State<SwitchOne> {
  final List<String> settings = [
    'Aiplane mode',
    'WLAN',
    'Mobile Data',
    'Bluetooth'
  ];
  List<bool> settingValues = [false, false, false, false];

  void onSwitch1Changed(bool value) {
    setState(() {
      this.settingValues[0] = value;
    });
    print(settingValues);
  }

  void onSwitch2Changed(bool value) {
    setState(() {
      this.settingValues[1] = value;
    });
    print(settingValues);
  }

  void onSwitch3Changed(bool value) {
    setState(() {
      this.settingValues[2] = value;
    });
    print(settingValues);
  }

  void onSwitch4Changed(bool value) {
    setState(() {
      this.settingValues[3] = value;
    });
    print(settingValues);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade400,
        title: Text('Demo Switch'),
      ),
      body: Container(
        padding: new EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Row(
              children: [
                Switch(
                    value: this.settingValues[0],
                    onChanged: (bool value) {
                      onSwitch1Changed(value);
                    }),
                Container(
                  width: 8.0,
                ),
                Text(this.settings[0]),
              ],
            ),
            Divider(),
            Row(
              children: [
                Switch(
                    value: this.settingValues[1],
                    onChanged: (bool value) {
                      onSwitch2Changed(value);
                    }),
                Container(
                  width: 8.0,
                ),
                Text(this.settings[1]),
              ],
            ),
            Divider(),
            Row(
              children: [
                Switch(
                    value: this.settingValues[2],
                    onChanged: (bool value) {
                      onSwitch3Changed(value);
                    }),
                Container(
                  width: 8.0,
                ),
                Text(this.settings[2]),
              ],
            ),
            Divider(),
            Row(
              children: [
                Switch(
                    value: this.settingValues[3],
                    onChanged: (bool value) {
                      onSwitch4Changed(value);
                    }),
                Container(
                  width: 8.0,
                ),
                Text(this.settings[3]),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
