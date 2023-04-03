import 'package:flutter/material.dart';

import 'package:flutter_tflite/flutter_tflite.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Tflite.close();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/img.png'),
            IconButton(
                onPressed: () async {
                  final data = await Tflite.runModelOnImage(
                    path: 'assets/img.png',
                    numResults: 3,
                    threshold: 0.5,
                  );
                  print(data);
                },
                icon: Icon(Icons.camera)),
          ],
        ),
      ),
    );
  }
}
