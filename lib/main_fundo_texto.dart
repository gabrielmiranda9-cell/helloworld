import 'package:flutter/material.dart';

//Run | Debug | Profile
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/calma_calabreso.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: const Center(
            child: Text(
              'senai!',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 31, 7, 215),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
