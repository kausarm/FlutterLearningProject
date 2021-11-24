import 'package:flutter/material.dart';
import 'package:kausar/pages/KAUSAR_UTS/onboarding.dart';
import 'package:kausar/pages/theme.dart';

class Matakuliah extends StatelessWidget {
  const Matakuliah({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: Color(0xffFFC33A),
        width: double.infinity,
        child: SafeArea(
          child: ListView(
            // scrollDirection: Axis.horizontal,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return onboarding();
                        }));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Log out',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MATAKULIAH TI KELAS 3C',
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
              costumeCard(Icons.book_outlined, 'Pengolah Citra Digital'),
              costumeCard(Icons.book, 'Pemograman Mobile'),
              costumeCard(Icons.book_online, 'Praktikum Pemograman Mobile'),
              costumeCard(Icons.book, 'Keamanan Jaringan'),
              costumeCard(Icons.book, 'Praktikum Keamanan Jaringan'),
              costumeCard(Icons.book, 'Workshop Perangkat Lunak'),
              costumeCard(Icons.book, 'Bahasa Indonesia'),
              costumeCard(Icons.book, 'Praktikum Pengolah Citra Digital'),
              costumeCard(Icons.book, 'MK'),
              costumeCard(Icons.book, 'MK'),
              costumeCard(Icons.book, 'MK'),
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
        height: 40,
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
