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
  // Qual item da barra de baixo está selecionado
  int _abaSelecionada = 0;

  // As 6 "pílulas" do protótipo
  static const _categorias = [
    'Cardiologia',
    'Pediatria',
    'Dermatologia',
    'Ortopedia',
    'Clínico geral',
    'Odontologia',
  ];

  // Dados de exemplo (depois isso vem do repository / banco)
  final List<Clinica> _clinicas = [
    Clinica(
      nome: 'Clínica Vida',
      endereco: 'Rua das Flores, 120',
      telefone: '(86) 3222-0001',
      email: 'contato@vida.com',
      horarioFuncionamento: '08h às 18h',
    ),
    Clinica(
      nome: 'Clínica Saúde Total',
      endereco: 'Av. Frei Serafim, 800',
      telefone: '(86) 3222-0002',
      email: 'contato@saudetotal.com',
      horarioFuncionamento: '07h às 17h',
    ),
    Clinica(
      nome: 'Clínica Bem Estar',
      endereco: 'Rua Areolino de Abreu, 45',
      telefone: '(86) 3222-0003',
      email: 'contato@bemestar.com',
      horarioFuncionamento: '08h às 19h',
    ),
    Clinica(
      nome: 'Clínica Popular',
      endereco: 'Av. Nossa Sra. de Fátima, 300',
      telefone: '(86) 3222-0004',
      email: 'contato@popular.com',
      horarioFuncionamento: '06h às 16h',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _abaSelecionada,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _Topo(),
                  const SizedBox(height: 16),
                  _Categorias(categorias: _categorias),
                  const SizedBox(height: 16),
                  Expanded(child: _GradeClinicas(clinicas: _clinicas)),
                ],
              ),
            ),
          ),
          ClinicasPages(clinicas: _clinicas),
          const MedicosPage(medicos: <Medico>[]),
          const _PerfilPage(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _abaSelecionada,
        onDestinationSelected: (i) => setState(() => _abaSelecionada = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Início'),
          NavigationDestination(
              icon: Icon(Icons.local_hospital_outlined), label: 'Clínicas'),
          NavigationDestination(
              icon: Icon(Icons.medical_services_outlined), label: 'Médicos'),
          NavigationDestination(
              icon: Icon(Icons.person_outline), label: 'Perfil'),
        ],
      ),
    );
  }
}

class _PerfilPage extends StatelessWidget {
  const _PerfilPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: const Center(child: Text('Perfil do usuário')),
    );
  }
}

/// Círculo (avatar) + barra de busca
class _Topo extends StatelessWidget {
  const _Topo();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(radius: 24, child: Icon(Icons.person)),
        const SizedBox(width: 12),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Buscar clínicas',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// As pílulas arredondadas. O Wrap joga para a linha de baixo
/// quando não cabe, igual ao desenho.
class _Categorias extends StatelessWidget {
  final List<String> categorias;

  const _Categorias({required this.categorias});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final categoria in categorias)
          ActionChip(
            label: Text(categoria),
            shape: const StadiumBorder(),
            onPressed: () {
              // TODO: filtrar a lista por categoria
            },
          ),
      ],
    );
  }
}

/// Grade com 2 colunas
class _GradeClinicas extends StatelessWidget {
  final List<Clinica> clinicas;

  const _GradeClinicas({required this.clinicas});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: clinicas.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.1,
      ),
      itemBuilder: (context, index) {
        return _ClinicaCard(
          clinica: clinicas[index],
          onTap: () {
            // TODO: abrir a tela de detalhes da clínica
          },
        );
      },
    );
  }
}

class _ClinicaCard extends StatelessWidget {
  final Clinica clinica;
  final VoidCallback onTap;

  const _ClinicaCard({required this.clinica, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final texto = Theme.of(context).textTheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.local_hospital_outlined, size: 32),
              const Spacer(),
              Text(
                clinica.nome,
                style: texto.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                clinica.endereco,
                style: texto.bodySmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}