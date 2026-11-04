import 'package:flutter/material.dart';
import 'package:projeto_flutter/estilo/style-page.dart';
import 'package:projeto_flutter/pages/clinicas_page.dart';

class MeuAplicativo extends StatelessWidget{
  const MeuAplicativo({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Consultar Clinica',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 226, 179, 235),
      ),
      home: home(),
      );
  }
}

Widget home() {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Consultar Clinica'),
    ),
    body: body(),
  );
}

Widget body() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Bem-vindo ao aplicativo de consulta de clínicas!',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Ação ao pressionar o botão
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ClinicasPages(),
            );
          },
          child: Text('Consultar Clínicas'),
        ),
      ],
    ),
  );
}