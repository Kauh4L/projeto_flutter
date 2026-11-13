import 'package:flutter/material.dart';
import 'package:projeto_flutter/medicos/medico.dart';

class MedicosPage extends StatelessWidget {
  final List<Medico> medicos;

  

  const MedicosPage({super.key, required this.medicos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Médicos'),
      ),
      body: medicos.isEmpty
          ? const Center(child: Text('Nenhum médico cadastrado.'))
          : ListView.separated(
              itemCount: medicos.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final medico = medicos[index];
                return ListTile(
                  leading: const Icon(Icons.medical_services_outlined),
                  title: Text(medico.nome),
                  subtitle: Text(
                    '${medico.especialidade}\nCRM: ${medico.crm}\n${medico.telefone}${medico.clinica != null ? '\n${medico.clinica!.nome}' : ''}',
                  ),
                  isThreeLine: true,
                );
              },
            ),
    );
  }
}
