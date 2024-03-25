import 'package:flutter/material.dart';

class AccounScreen extends StatefulWidget {
  const AccounScreen
  ({super.key});

  @override
  State<AccounScreen> createState() => _AccounScreenState();
}

class _AccounScreenState extends State<AccounScreen
> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Account Screen',
    style: TextStyle(fontSize: 16,
    fontWeight: FontWeight.bold),
    ),
    ),
    );
  }
}