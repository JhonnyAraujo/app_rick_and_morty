class PersonagemResponse {
  final String? next;
  final List results;

  PersonagemResponse({required this.results, required this.next});

  factory PersonagemResponse.fromMap(Map<String, dynamic> map) {
    return PersonagemResponse(
      next: map["info"]["next"],
      results: map["results"],
    );
  }
}
