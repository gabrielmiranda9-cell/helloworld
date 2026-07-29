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
        appBar: AppBar(title: Text("minha tela")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.thumb_up, size: 60),

              Text(
                "d.s e o melhor cursode sesi?",
                style: TextStyle(fontSize: 22),
              ),

              ElevatedButton(
                onPressed: () {
                  print("usuario clicou");
                },
                child: Text("curtir"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
