import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_circle, size: 80, color: Colors.blue),
          SizedBox(height: 20),
          Text("صفحة الحساب", style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
