import 'package:flutter/material.dart';
import 'package:kausar/pages/theme.dart';

class Listview extends StatelessWidget {
  const Listview({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.green,
        width: double.infinity,
        child: SafeArea(
          child: ListView(
            // scrollDirection: Axis.horizontal,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MENCOBA VERTICAL LISTVIEW',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              costumeCard(Icons.access_alarm_sharp, 'Percobaan 1'),
              costumeCard(Icons.zoom_out_map, 'Percobaan 2'),
              costumeCard(Icons.zoom_out_rounded, 'Percobaan 3'),
              costumeCard(Icons.yard_sharp, 'Percobaan 4'),
              costumeCard(Icons.workspaces_sharp, 'Percobaan 5'),
              costumeCard(Icons.access_alarm_sharp, 'Percobaan 6'),
              costumeCard(Icons.access_alarm_sharp, 'Percobaan 7'),
              costumeCard(Icons.access_alarm_sharp, 'Percobaan 1'),
              costumeCard(Icons.zoom_out_map, 'Percobaan 2'),
              costumeCard(Icons.zoom_out_rounded, 'Percobaan 3'),
              costumeCard(Icons.yard_sharp, 'Percobaan 4'),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Card costumeCard(IconData icon, String text) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: Colors.green,
              size: 20,
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
