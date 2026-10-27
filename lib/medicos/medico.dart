import 'package:projeto_flutter/clinicas/clinica.dart';

class Medico {
  final String nome;
  final String crm;
  final String especialidade;
  final String telefone;
  final String email;
  final Clinica? clinica;

  Medico({
    required this.nome,
    required this.crm,
    required this.especialidade,
    required this.telefone,
    required this.email,
    this.clinica,
  });
}