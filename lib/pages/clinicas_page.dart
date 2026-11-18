import 'package:flutter/material.dart';
import 'package:projeto_flutter/clinicas/clinica.dart';

class ClinicasPages extends StatelessWidget {
  final List<Clinica> clinicas;

  const ClinicasPages({super.key, required this.clinicas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clínicas')),
      body: clinicas.isEmpty
          ? const Center(child: Text('Nenhuma clínica cadastrada'))
          : ListView.builder(
              itemCount: clinicas.length,
              itemBuilder: (context, index) {
                final clinica = clinicas[index];
                return ListTile(
                  title: Text(clinica.nome),
                  subtitle: Text(clinica.endereco),
                );
              },
            ),
    );
  }
}