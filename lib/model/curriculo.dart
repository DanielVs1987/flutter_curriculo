import 'package:flutter_curriculo/model/experiencia.dart';
import 'package:flutter_curriculo/model/projetos.dart';

class Curriculo {
  String nome;
  String email;
  String caminhoImagem;
  List<Expereiencia> listaExperienciaEduca;
  List<Expereiencia> listaExperienciaProf;
  List<Projetos> listaProjetos;

  Curriculo({
    required this.nome,
    required this.caminhoImagem,
    required this.email,
    required this.listaProjetos,
    required this.listaExperienciaProf,
    required this.listaExperienciaEduca,
  });
  
}