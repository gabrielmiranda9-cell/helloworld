import 'package:flutter/material.dart';

void main() {
  runApp(const SupermercadoApp());
}

class SupermercadoApp extends StatelessWidget {
  const SupermercadoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supermercado',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

//==================== TELA INICIAL ====================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Supermercado"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.shopping_cart),
          label: const Text("Abrir Lista de Compras"),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListaPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

//==================== MODELO DO PRODUTO ====================

class Produto {
  String nome;
  bool comprado;

  Produto(this.nome, this.comprado);
}

//==================== TELA DA LISTA ====================

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<Produto> produtos = [
    Produto("Arroz", false),
    Produto("Feijão", false),
    Produto("Macarrão", false),
    Produto("Leite", false),
    Produto("Açúcar", false),
    Produto("Café", false),
    Produto("Óleo", false),
    Produto("Frango", false),
    Produto("Carne", false),
    Produto("Queijo", false),
    Produto("Presunto", false),
    Produto("Chocolate", false),
    Produto("Refrigerante", false),
    Produto("Biscoito", false),
    Produto("Sabão em Pó", false),
  ];

  int get totalComprados =>
      produtos.where((produto) => produto.comprado).length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Compras"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.green.shade100,
            padding: const EdgeInsets.all(15),
            child: Text(
              "Itens comprados: $totalComprados/${produtos.length}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: produtos.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: CheckboxListTile(
                    title: Text(
                      produtos[index].nome,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: produtos[index].comprado
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    value: produtos[index].comprado,
                    activeColor: Colors.green,
                    secondary: const Icon(
                      Icons.shopping_basket,
                      color: Colors.green,
                    ),
                    onChanged: (valor) {
                      setState(() {
                        produtos[index].comprado = valor!;
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.check),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "Você marcou $totalComprados itens como comprados!",
              ),
              duration: const Duration(seconds: 2),
            ),
          );
        },
      ),
    );
  }
}