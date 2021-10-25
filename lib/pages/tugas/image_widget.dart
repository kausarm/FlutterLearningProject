import 'package:flutter/material.dart';

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
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(3),
          width: 200,
          height: 200,
          child: const Image(
              image: NetworkImage(
                  'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/2/7/a84fbf91-6bde-4261-9e7e-732e3a4dc4da.jpg')),
        ),
      ),
    );
  }
}
