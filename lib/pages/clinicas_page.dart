import 'package:flutter/material.dart';

class ClinicasPages extends StatelessWidget{
  final dynamic clinicas;

  const ClinicasPages({Key? key, required this.clinicas}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Clínicas'),
      ),)
}