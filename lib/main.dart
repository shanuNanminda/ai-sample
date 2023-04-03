

import 'package:a_i_sample/image_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
// import 'package:tflite/tflite.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await laodModel();
  runApp(const MyApp());
}


laodModel()async{
//   Interpreter.fromAsset('assets/model.tflite');
// FileUtil.loadLabels('assets/lables.txt');
// File img;
await Tflite.loadModel(model: 'assets/model.tflite',labels: 'assets/labels.txt');
}
TextEditingController controller=TextEditingController();
Widget t=Text('data');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(t);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImagePage(),
    );
  }
}
