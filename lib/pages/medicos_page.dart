import 'package:flutter/material.dart';
import 'package:projeto_flutter/medicos/medico.dart';

class MedicosPage extends StatelessWidget {
  final List<Medico> medicos;

  

  const MedicosPage({super.key, required this.medicos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Médicos')),
      body: medicos.isEmpty
          ? const Center(child: Text('Nenhum médico cadastrado'))
          : ListView.builder(
              itemCount: medicos.length,
              itemBuilder: (context, index) {
                final medico = medicos[index];
                return ListTile(
                  title: Text(medico.nome),
                  subtitle: Text(medico.especialidade),
                );
              },
            ),
    );
  }
}
