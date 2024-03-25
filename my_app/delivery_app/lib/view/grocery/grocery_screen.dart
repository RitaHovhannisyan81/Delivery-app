import 'package:flutter/material.dart';
class GroceryScreen extends StatefulWidget {
  const GroceryScreen
({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
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