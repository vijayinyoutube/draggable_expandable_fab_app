import 'package:flutter/material.dart';

class DeleteScreen extends StatelessWidget {
  const DeleteScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'deleteBtn',
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
      ),
    );
  }
}
