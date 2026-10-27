class Paciente {
  final String nome;
  final int idade;
  final String cpf;
  final String telefone;
  final String endereco;
 /*
  final String? convenio;
  final List<String> doencas;
  final List<String> alergias;
  final List<String> medicamentos;
*/

  Paciente({
    required this.nome,
    required this.idade,
    required this.cpf,
    required this.telefone,
    required this.endereco,
    //this.convenio,
    //this.doencas = const [],
    //this.alergias = const [],
    //this.medicamentos = const [],
  });
}