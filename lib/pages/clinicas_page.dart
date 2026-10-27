import 'package:flutter/material.dart';
import 'package:projeto_flutter/clinicas/clinica.dart';

class ClinicasPages extends StatelessWidget{
  final dynamic clinicas;

  const ClinicasPages({Key? key, required this.clinicas}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = clinicas.tabela;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Consulta de Clínicas'),
        
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(tabela[clinicas].icone),
            title: Text(tabela[clinicas].nome),
            trailing: Text(tabela[clinicas].endereco),
          );
        },
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, __) => Divider(),
        itemCount: clinicas.length,
      ));
   }

}