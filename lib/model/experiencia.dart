

class Expereiencia {
  String titulo;
  String? organizacao;
  String? observacao;
  DateTime dataInicio;
  DateTime? dataFim;

  Expereiencia({
    required this.titulo,
    required this.organizacao,
    required this.observacao,
    required this.dataInicio,
    this.dataFim,
  });
}