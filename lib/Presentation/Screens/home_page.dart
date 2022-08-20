import 'package:draggable_expandable_fab/draggable_expandable_fab.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      floatingActionButtonLocation: ExpandableFloatLocation(),
      floatingActionButton: ExpandableDraggableFab(
        childrenBoxDecoration: const BoxDecoration(color: Colors.transparent),
        childrenCount: 4,
        distance: 10,
        childrenType: ChildrenType.rowChildren,
        childrenAlignment: Alignment.center,
        children: [
          FloatingActionButton(
              heroTag: "addBtn",
              onPressed: () => Navigator.of(context).pushNamed('/add'),
              child: const Icon(Icons.add)),
          FloatingActionButton(
              heroTag: "cameraBtn",
              onPressed: () => Navigator.of(context).pushNamed('/camera'),
              child: const Icon(Icons.camera)),
          FloatingActionButton(
              heroTag: "paymentBtn",
              onPressed: () => Navigator.of(context).pushNamed('/payment'),
              child: const Icon(Icons.payment)),
          FloatingActionButton(
            heroTag: "deleteBtn",
            onPressed: () => Navigator.of(context).pushNamed('/delete'),
            backgroundColor: Colors.red,
            child: const Icon(Icons.delete_sharp),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
