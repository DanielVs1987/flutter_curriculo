import 'package:flutter/material.dart';
import 'package:flutter_curriculo/model/experiencia.dart';

class ExperienciaEducaWidget extends StatelessWidget {
  final Expereiencia experienciaEduca;
  const ExperienciaEducaWidget({super.key, required this.experienciaEduca});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
              "*${experienciaEduca.titulo} (${experienciaEduca.organizacao} - ${experienciaEduca.dataInicio.year})"),
        ]);
  }
}
