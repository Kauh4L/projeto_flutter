import 'package:flutter/material.dart';
import 'package:projeto_flutter/estilo/style-page.dart';
import 'package:projeto_flutter/medicos/medico.dart';
import 'package:projeto_flutter/pages/funcoes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Consultar Clínica'),
      body: Container(
        margin: const EdgeInsets.all(AppTheme.pageSpacing),
        child: const Body(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(AppTheme.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title), // title = consulta clinicas
      actions: [
        //vou adicionar botão
        IconButton(
          //botao pesquisa com icone
          onPressed: () {
            print('pesquisa clicada');
          },
          icon: const Icon(Icons.search),
        ),

        //botão de perfil
        IconButton(
          onPressed: () {
            print('perfil clicado');
          },
          icon: const Icon(Icons.person),
        ),
      ],
      backgroundColor: AppTheme.primary,
      foregroundColor: AppTheme.onPrimary,
      centerTitle: true,
      elevation: AppTheme.elevation,
      shadowColor: AppTheme.text,
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return CustomWrap(children: Funcoes.Especialidades());
    });
  }
}

class CustomWrap extends StatelessWidget {
  final List<Widget> children;

  const CustomWrap({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppTheme.pageSpacing,
      runSpacing: AppTheme.pageSpacing,
      alignment: WrapAlignment.start,
      children: children,
    );
  }
}

class CategoriaEspecialidade extends StatelessWidget {
  final String nome;
  final IconData icone;

  const CategoriaEspecialidade({
    super.key,
    required this.nome,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      
      decoration: BoxDecoration(
        color: AppTheme.primary,
        borderRadius: BorderRadius.circular(AppTheme.categoryRadius),
      ),
      
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icone, color: AppTheme.onPrimary),
          const SizedBox(width: 5),
          Text(
            nome,
            style: const TextStyle(
              color: AppTheme.onPrimary,
              fontSize: 12,
            ),
          ),
          elevation: AppTheme.elevation;
          BoxShadow: 
        ],
      ),
    );
  }
}
