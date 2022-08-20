import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'paymentBtn',
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
      ),
    );
  }
}
