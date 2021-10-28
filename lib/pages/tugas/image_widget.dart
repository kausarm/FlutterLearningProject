import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Latihan Image Widget',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                child: const Image(
                  image: AssetImage('assets/images/profile.png'),
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Networ Image",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_circle_down_rounded,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    Image(
                      image: NetworkImage(
                          'https://cdn0-production-images-kly.akamaized.net/sRmVnfnFTSz7EtGWGv_r7F6Kcgo=/640x360/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3278875/original/079595800_1603728453-Anime-Demon-Slayer-Kimetsu-no-Yaiba.jpg'),
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
