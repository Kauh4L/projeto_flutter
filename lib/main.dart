import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(SuperApp());
}

class SuperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('pt', 'BR'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Agendamento de Clinicas"),
          backgroundColor: Color(0xFFF4C2C2),
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFF4FA3D1),
            padding: const EdgeInsets.all(16),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                const Text('agendar consulta',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                ElevatedButton(onPressed: () {}, child: const Text('Clique')),
                ElevatedButton(
                  onPressed: () {
                    print("Botão 1 clicado");
                  },
                  child: const Text("Botão 1"),
                ),
                IconButton(
                  onPressed: () {
                    print("Ícone de estrela clicado!");
                  },
                  icon: const Icon(Icons.star, color: Colors.white),
                  iconSize: 35,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Botão 2 clicado");
                  },
                  child: const Text("Botão 2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Botão 3 clicado");
                  },
                  child: const Text("Botão 3"),
                ),
                const Icon(Icons.plus_one_rounded, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
