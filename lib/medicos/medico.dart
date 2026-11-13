import 'package:projeto_flutter/clinicas/clinica.dart';

const List<String> especialidades = [
  'Cardiologia',
  'Dermatologia',
  'Endocrinologia',
  'Gastroenterologia',
  'Ginecologia',
  'Neurologia',
  'Oftalmologia',
  'Ortopedia',
  'Otorrinolaringologia',
  'Pediatria',
  'Psiquiatria',
  'Urologia',
];

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

 // globaL medicos vao ser colocados em uma lista, para que seja possivel exibir na tela de medicos
  final List<Medico> medicos = [
      Medico(
      nome: 'João',
      crm: '12345',
      especialidade: 'Cardiologia',
      telefone: '999999999',
      email: 'joao@email.com',
    ),
      Medico(
      nome: 'Maria',
      crm: '67890',
      especialidade: 'Dermatologia',
      telefone: '888888888',
      email: 'ma@ads.com',
    ), 
      Medico(
      nome: 'Pedro',
      crm: '54321',
      especialidade: 'Neurologia',
      telefone: '777777777',
      email: 'pedro@email.com',
    ), 
      Medico(
      nome: 'Ana',
      crm: '09876',
      especialidade: 'Pediatria',
      telefone: '666666666',
      email: 'ana@email.com',
    ),
];