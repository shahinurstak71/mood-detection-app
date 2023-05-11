import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'view/homepage.dart';
List<CameraDescription>? cameras;
void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestHome(),
    );
  }
}

class TestHome extends StatefulWidget {
  TestHome({Key? key}) : super(key: key);

  @override
  State<TestHome> createState() => _TestHomeState();
}

class _TestHomeState extends State<TestHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}