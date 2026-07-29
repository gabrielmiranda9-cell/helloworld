import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // CENTRALIZA TUDO
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // CENTRALIZA VERTICAL
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 60), // MAIOR
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF6A1B9A),
                    Color(0xFF9C27B0),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40), // MAIOR
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),

                  CircleAvatar(
                    radius: 60, // MAIOR
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 70, // MAIOR
                      color: Colors.deepPurple,
                    ),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "GABRIEL MIRANDA",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24, // MAIOR
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "gabriel.miranda1533019@gmail.com",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 5),

                  // TELEFONE ADICIONADO
                  Text(
                    "19-994054280",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on,
                          color: Colors.white70, size: 18),
                      SizedBox(width: 5),
                      Text(
                        "Mococa",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 24, // MAIOR
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.deepPurple,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30, vertical: 12),
                    ),
                    child: Text(
                      "Editar Perfil",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            Text(
              "Outras informações do perfil...",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}