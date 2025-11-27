import 'package:flutter/material.dart';

class Towpage extends StatelessWidget {
  final String name;
  const Towpage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tow page')),
      body: Center(child: Text(name)),
    );
  }
}

class Towpage1 extends StatefulWidget {
  final String name;
  const Towpage1({super.key, required this.name});

  State<Towpage1> createState() => _Towpage1State();
}

class _Towpage1State extends State<Towpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tow page')),
      body: Center(child: Text(widget.name)),
    );
  }
}
