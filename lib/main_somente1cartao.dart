import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: const Center(
          child: BankCard(),
        ),
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  const BankCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF6A1B9A),
            Color(0xFF9C27B0),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0, 8),
          )
        ],
      ),
      child: Stack(
        children: [
          // Curva decorativa
          Positioned(
            top: -50,
            right: -50,
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white24, width: 1),
                borderRadius: BorderRadius.circular(200),
              ),
            ),
          ),

          // Nome do banco
          const Positioned(
            top: 0,
            left: 0,
            child: Text(
              "BANCO SESI/SENAI",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Chip
          Positioned(
            top: 40,
            left: 0,
            child: Container(
              width: 55,
              height: 40,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFFFE082),
                    Color(0xFFFFC107),
                    Color(0xFFFFA000),
                  ],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),

          // Validade
          const Positioned(
            top: 100,
            left: 0,
            child: Text(
              "Validade 12/28",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ),

          // Nome
          const Positioned(
            bottom: 45,
            left: 0,
            child: Text(
              "GABRIEL MIRANDA",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),

          // Conta
          const Positioned(
            bottom: 25,
            left: 0,
            child: Text(
              "Conta: 12345678-9",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),

          // Logo tipo Mastercard
          Positioned(
            bottom: 10,
            right: 10,
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),

          // Brilho
          Positioned(
            top: -20,
            left: -20,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Colors.white.withOpacity(0.15),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}