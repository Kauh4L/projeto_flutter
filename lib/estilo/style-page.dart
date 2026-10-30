import 'package:flutter/material.dart';

class Sp extends StatelessWidget {
  const Sp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: 120,
        color: Colors.blue[50],
        child: const Align(
          alignment: Alignment.topRight,
          child: FlutterLogo(size: 60),
        ),
      ),
    );
  }
}