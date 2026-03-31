class PersonagemResponse {
  final List lista;

  PersonagemResponse({required this.lista});

  factory PersonagemResponse.fromMap(Map<String, dynamic> map) {
    return PersonagemResponse(lista: map[""] as List);
  }
}
