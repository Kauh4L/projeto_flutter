class Clinica {
  final String nome;
  final String endereco;
  final String telefone;
  final String email;
  final String horarioFuncionamento;
  final String? cnpj;
 //final List<String> especialidades;

  Clinica({
    required this.nome,
    required this.endereco,
    required this.telefone,
    required this.email,
    required this.horarioFuncionamento,
    this.cnpj,
    //this.especialidades = const [],
  });
}