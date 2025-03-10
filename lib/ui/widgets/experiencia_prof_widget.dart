import 'package:flutter/material.dart';
import 'package:flutter_curriculo/model/experiencia.dart';

class ExperienciaProf extends StatelessWidget {
  final Expereiencia expereienciaProfs;

  const ExperienciaProf({super.key, required this.expereienciaProfs});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          expereienciaProfs.titulo,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(expereienciaProfs.organizacao!),
        (expereienciaProfs.observacao != null)
            ? Text("${expereienciaProfs.observacao}")
            : const SizedBox(),
        (expereienciaProfs.dataFim != null)
            ? Text(
                "${expereienciaProfs.dataInicio.year} - ${expereienciaProfs.dataFim!.year}")
            : Text("${expereienciaProfs.dataInicio.year} - Atual"),
        const SizedBox(height: 8)
      ],
    );
  }
}
