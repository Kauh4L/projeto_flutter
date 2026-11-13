import 'package:flutter/material.dart';
import 'package:projeto_flutter/clinicas/clinica.dart';

class ClinicasPages extends StatelessWidget {
  final List<Clinica> clinicas;

  const ClinicasPages({super.key, required this.clinicas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Clínicas'),
      ),
      body: clinicas.isEmpty
          ? const Center(child: Text('Nenhuma clínica cadastrada.'))
          : ListView.separated(
              itemCount: clinicas.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final clinica = clinicas[index];
                return ListTile(
                  leading: const Icon(Icons.local_hospital_outlined),
                  title: Text(clinica.nome),
                  subtitle: Text('${clinica.endereco}\n${clinica.telefone}'),
                  isThreeLine: true,
                );
              },
            ),
    );
  }
}