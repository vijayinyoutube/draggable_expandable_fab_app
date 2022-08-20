import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'cameraBtn',
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
      ),
    );
  }
}
