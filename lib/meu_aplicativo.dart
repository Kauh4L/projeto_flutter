import 'package:flutter/material.dart';
import 'package:projeto_flutter/estilo/style-page.dart';

class MeuAplicativo extends StatelessWidget{
  const MeuAplicativo({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Consultar Clinica',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Consultar Clínica')),
        body: const Column(
          children: [
            Text('Minhas Clínicas:'),
            Sp(),
          ],
        ),
      ),
    );
  }
}