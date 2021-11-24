import 'package:flutter/material.dart';

class SecondSwitch extends StatefulWidget {
  const SecondSwitch({Key? key}) : super(key: key);

  @override
  _SecondSwitchState createState() => _SecondSwitchState();
}

class _SecondSwitchState extends State<SecondSwitch> {
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
        backgroundColor: Colors.deepOrange.shade400,
        title: Text("Demo SwitchListTile"),
      ),
      body: Container(
        padding: new EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SwitchListTile(
                value: this.settingValues[0],
                title: Text(this.settings[0]),
                secondary: Icon(Icons.airplanemode_active),
                onChanged: (value) {
                  onSwitch1Changed(value);
                }),
            Divider(),
            SwitchListTile(
                value: this.settingValues[1],
                title: Text(this.settings[1]),
                secondary: Icon(Icons.wifi),
                onChanged: (value) {
                  onSwitch2Changed(value);
                }),
            Divider(),
            SwitchListTile(
                value: this.settingValues[2],
                title: Text(this.settings[2]),
                secondary: Icon(Icons.data_usage),
                onChanged: (value) {
                  onSwitch3Changed(value);
                }),
            Divider(),
            SwitchListTile(
                value: this.settingValues[3],
                title: Text(this.settings[3]),
                secondary: Icon(Icons.bluetooth),
                onChanged: (value) {
                  onSwitch4Changed(value);
                }),
          ],
        ),
      ),
    );
  }
}
