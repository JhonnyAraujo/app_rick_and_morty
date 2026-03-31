class PersonagemResponse {
  final List lista;

  PersonagemResponse({required this.lista});

  factory PersonagemResponse.fromMap(List list) {
    return PersonagemResponse(lista: list);
  }
}
