import 'package:flutter_curriculo/model/curriculo.dart';
import 'package:flutter_curriculo/model/experiencia.dart';
import 'package:flutter_curriculo/model/projetos.dart';

Curriculo meuCurriculo = Curriculo(
  nome: "Daniel Valverde Silva",
  caminhoImagem: "lib/assets/leonardo.jpg",
  listaProjetos: meusProjetos,
  listaExperienciaProf: listaExperienciaProf,
  listaExperienciaEduca: listaExperienciaEduca,
  email: "daniel.v.silva@gmail.com"
);

List<Projetos> meusProjetos = [
  Projetos(
    caminhoImagem: "lib/assets/app1.jpg",
    titulo: "App 1",
    descricao: "lkfsmgl~samdgfas"
  ),
    Projetos(
    caminhoImagem: "lib/assets/app1.jpg",
    titulo: "App 2",
    descricao: "klmsfdçglkmdlfgmsdf"
  ),
    Projetos(
    caminhoImagem: "lib/assets/app1.jpg",
    titulo: "App 3",
    descricao: "ksmfsdfmaldsmçflkmsal"

  ),
];

List<Expereiencia> listaExperienciaProf = [
  Expereiencia(
    titulo: "Exemplo 1",
    organizacao: "XPTO Service",
    observacao: "Observacao",
    dataInicio: DateTime.parse("2025-01-25"),
    dataFim: DateTime.parse("2025-02-25"),
  ),
    Expereiencia(
    titulo: "Exemplo 2",
    organizacao: "XPTO Service 2",
    observacao: "Observacao",
    dataInicio: DateTime.parse("2025-01-26"),
    
  ),
    Expereiencia(
    titulo: "Exemplo 3",
    organizacao: "XPTO Service 3",
    observacao: "Observacao",
    dataInicio: DateTime.parse("2025-01-23"),
    dataFim: DateTime.parse("2025-02-23"),
  ),

];

List<Expereiencia> listaExperienciaEduca = [
  Expereiencia(
    titulo: "Escola Exemplo 1",
    organizacao: "Escola XPTO 1",
    observacao: "Observacao",
    dataInicio: DateTime.parse("2025-01-25"),
    dataFim: DateTime.parse("2025-02-25"),
  ),
    Expereiencia(
    titulo: "Escola Exemplo 2",
    organizacao: "Escola XPTO 2",
    observacao: "Observacao",
    dataInicio: DateTime.parse("2025-01-26"),
    dataFim: DateTime.parse("2025-02-26"),
  ),
    Expereiencia(
    titulo: "Escola Exemplo 3",
    organizacao: "Escola XPTO 3",
    observacao: "Observacao",
    dataInicio: DateTime.parse("2024-01-26"),
    dataFim: DateTime.parse("2024-02-26"),
  ),
];
