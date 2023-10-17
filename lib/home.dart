import 'package:flutter/material.dart';
import 'package:flutter_auth_last/servise.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passcontroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(height: 120),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "E-mail"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              controller: passcontroller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password: 123456"),
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                AuthService.instance.signUpUser(
                    context, emailcontroller.text, passcontroller.text);
              },
              style: ElevatedButton.styleFrom(minimumSize: const Size(255, 50)),
              child: const Text(
                'Save',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
