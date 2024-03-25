import 'package:flutter/material.dart';

class BusketScreen extends StatefulWidget {
  const BusketScreen
  ({super.key});

  @override
  State<BusketScreen> createState() => _BusketScreenState();
}

class _BusketScreenState extends State<BusketScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:
        Text('Account Screen',
    style: TextStyle(fontSize: 16,
    fontWeight: FontWeight.bold),
    ),
    ),
    );
  }
}