import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _inputController = TextEditingController();
  final TextEditingController _outputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "الصفحة الرئيسية",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _inputController,
            decoration: const InputDecoration(
              labelText: "الحقل الأول (أدخل النص)",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                _outputController.text = _inputController.text;
              });
            },
            icon: const Icon(Icons.copy),
            label: const Text("نسخ النص للحقل الثاني"),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _outputController,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: "الحقل الثاني (النتيجة)",
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}
