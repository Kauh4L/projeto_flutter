import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/clinicas_page.dart';

class MeuAplicativo extends StatelessWidget{
  const MeuAplicativo({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Consultar Clinica',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
      ),
      home: ClinicasPages(clinicas: null,),
    );
  }
}