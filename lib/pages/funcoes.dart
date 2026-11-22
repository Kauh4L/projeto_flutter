import 'package:flutter/material.dart';
import 'package:projeto_flutter/medicos/medico.dart';
import 'package:projeto_flutter/pages/home_page.dart';

class Funcoes {
  static List<String> Extrair(List<Medico> medicos) {
    List<String> especialidades = [];
    for (var medico in medicos) {
      if (!especialidades.contains(medico.especialidade)) {
        especialidades.add(medico.especialidade);
      }
    }
    return especialidades;
  }

  static List<Widget> Especialidades() {
    final especialidadesDisponivel = Extrair(medicos);

    List<Widget> widgets = [];
    for (var especialidade in especialidadesDisponivel) {
      widgets.add(
        CategoriaEspecialidade(
            nome: especialidade, icone: Icons.medical_services_outlined),
      );
    }
    return widgets;
  }
}
