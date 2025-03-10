import 'package:flutter/material.dart';

import 'package:flutter_curriculo/model/curriculo.dart';
import 'package:flutter_curriculo/model/experiencia.dart';
import 'package:flutter_curriculo/model/projetos.dart';
import 'package:flutter_curriculo/ui/widgets/experiencia_educa_widget.dart';
import 'package:flutter_curriculo/ui/widgets/experiencia_prof_widget.dart';
import 'package:flutter_curriculo/ui/widgets/projeto_widget.dart';

class CurriculoScreen extends StatefulWidget {
  final Curriculo curriculo;
  const CurriculoScreen({super.key, required this.curriculo});

  @override
  State<CurriculoScreen> createState() => _CurriculoScreenState();
}

class _CurriculoScreenState extends State<CurriculoScreen> {
  bool mostrarEmail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(32),
      child: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/leonardo.jpg",
              width: 128,
              height: 128,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.curriculo.nome,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            (mostrarEmail)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.curriculo.email),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            mostrarEmail = false;
                          });
                        },
                        icon: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.blue[600],
                        ),
                      )
                    ],
                  )
                : ElevatedButton(
                    onPressed: () {
                      setState(() {
                        mostrarEmail = true;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.blue[600]),
                    ),
                    child: const Text(
                      "Ver E-mail",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
            SizedBox(
              height: 16,
            ),
            Text(
              "🎓 Escolaridade",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                widget.curriculo.listaExperienciaEduca.length,
                (index) {
                  Expereiencia experienciaEduca =
                      widget.curriculo.listaExperienciaEduca[index];
                  // return Text(
                  //     "*${experienciaEduca.titulo} (${experienciaEduca.organizacao} - ${experienciaEduca.dataInicio.year})");
                  return ExperienciaEducaWidget(
                      experienciaEduca: experienciaEduca);
                },
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "🧠 Experiência Profissional",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                widget.curriculo.listaExperienciaProf.length,
                (index) {
                  Expereiencia expereienciaProfs =
                      widget.curriculo.listaExperienciaProf[index];
                  return ExperienciaProf(expereienciaProfs: expereienciaProfs);
                },
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              "📲 Projetos",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: List.generate(
                widget.curriculo.listaProjetos.length,
                (index) {
                  Projetos projetos = widget.curriculo.listaProjetos[index];
                  return ProjetoWidget(projetos: projetos);
                },
              ),
            )
          ],
        ),
      ]),
    ));
  }
}
