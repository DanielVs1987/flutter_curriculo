import 'package:flutter/material.dart';
import 'package:flutter_curriculo/model/projetos.dart';

class ProjetoWidget extends StatelessWidget {
  final Projetos projetos;
  const ProjetoWidget({super.key, required this.projetos});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Image.asset("assets/app1.jpg"),
        Text(
          projetos.titulo,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          projetos.descricao,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
