class LoadPersonagem {
  final List lista;

  LoadPersonagem({required this.lista});

  factory LoadPersonagem.fromMap(Map<String, dynamic> map) {
    return LoadPersonagem(lista: map[""] as List);
  }
}
