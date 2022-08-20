import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'addBtn',
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
      ),
    );
  }
}
