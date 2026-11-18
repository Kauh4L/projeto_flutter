import 'package:flutter/material.dart';
import 'package:projeto_flutter/clinicas/clinica.dart';
import 'package:projeto_flutter/estilo/style-page.dart';
import 'package:projeto_flutter/pages/clinicas_page.dart';
import 'package:projeto_flutter/pages/pag_principal.dart';

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consultar Clinica',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomePage(),
    );
  }
}

Widget home() {
  return Scaffold(
    appBar: AppBar(title: const Text('Consultar Clínica')),
    body: Builder(builder: (context) => body(context)),
  );
}

Widget body(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Bem-vindo ao aplicativo de consulta de clínicas!',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ClinicasPages(
                  clinicas: <Clinica>[],
                ),
              ),
            );
          },
          child: const Text('Consultar Clínicas'),
        ),
      ],
    ),
  );
}
