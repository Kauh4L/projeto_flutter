import 'package:flutter/material.dart';
import 'package:projeto_flutter/clinicas/clinica.dart';
import 'package:projeto_flutter/medicos/medico.dart';
import 'package:projeto_flutter/pages/clinicas_page.dart';
import 'package:projeto_flutter/pages/medicos_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Consultar Clínica'),
      /*PreferredSize(
      preferredSize: const Size.fromHeight(56),
      child: const CustomAppBar(title: 'Consultar Clínica'),
      ),*/
      body: Body(),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

final String title;

const CustomAppBar({super.key, required this.title});

@override
Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
     
      actions: [ 
        //vou adicionar botão 
        IconButton(
          //botao pesquisa com icone
          onPressed: (){
              print('pesquisa clicada');
            },
          icon: const Icon(Icons.search),
          ),
        
        //botão de perfil
        IconButton(
          onPressed: (){
              print('perfil clicado');
            },
          icon: const Icon(Icons.person),
        ),
      ],

      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      centerTitle: true,
        elevation: 2,
  );
  }
}

class Body extends StatelessWidget {
    const Body({super.key});

    @override
    Widget build(BuildContext context) {
      return Wrap( //era row com axisAlignment: MainAxisAlignment.spaceEvenly, 
        spacing: 20,
        runSpacing: 15,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const[ 
           CategoriaEspecialidade(nome: 'Cardiologia', icone: Icons.favorite),
           CategoriaEspecialidade(nome: 'Dermatologia', icone: Icons.spa),
           CategoriaEspecialidade(nome: 'Neurologia', icone: Icons.psychology),
           CategoriaEspecialidade(nome: 'Otorrinolaringologia', icone: Icons.hearing),
           CategoriaEspecialidade(nome: 'Pediatria', icone: Icons.child_care),
        ],
      );
  }
}

class CategoriaEspecialidade extends StatelessWidget {
  final String nome;
  final IconData icone;

  const CategoriaEspecialidade({super.key, required this.nome, required this.icone});

  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration( 
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
     child: Row( 
        mainAxisSize: MainAxisSize.min,
        children: [ 
          Icon(icone, color: Colors.white), 
          const SizedBox(width: 5),
          Text( 
            nome, 
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
     ), 
    );
  }
}