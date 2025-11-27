import 'package:flutter/material.dart';
import 'package:text_fild/Towpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  void _logon() {
    setState(() {
      _controller2.text = _controller1.text;
    });
  }

  void _Navgitor() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Towpage(name: _controller1.text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home page')),
      body: Column(
        children: [
          TextField(
            controller: _controller1,
            decoration: InputDecoration(label: Text('Enter the name')),
          ),
          TextField(
            controller: _controller2,
            decoration: InputDecoration(label: Text('the name')),
          ),
          ElevatedButton(
            onPressed: () {
              _logon();
            },
            child: Text('submit'),
          ),
          ElevatedButton(
            onPressed: () {
              _Navgitor();
            },
            child: Text('Navgitor'),
          ),
        ],
      ),
    );
  }
}
