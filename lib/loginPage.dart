import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final UsernameController = TextEditingController();
    final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: UsernameController,
            decoration: InputDecoration(hintText: 'username'),
          ),
           TextField(
            controller: passwordController,
            decoration: InputDecoration(hintText: 'Password'),
          )
        ]),

    );
  }
}