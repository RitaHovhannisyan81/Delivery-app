import 'package:flutter/material.dart';
class BrowseScreen extends StatefulWidget {
  const BrowseScreen
  ({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen
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