import 'package:flutter/material.dart';

void main() => runApp(const MeuApp());

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer'),
          backgroundColor: Colors.purple,

          // Cor do título
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),

          // Cor do ícone do menu
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),

        body: const Center(
          child: Text('Abra o menu'),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              GestureDetector(
                onTap: () => print('Clicou em: Loja'),
                child: Container(
                  color: Colors.purple,
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    'Loja',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),

              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Início'),
                onTap: () {
                  print('Clicou em: Início');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}