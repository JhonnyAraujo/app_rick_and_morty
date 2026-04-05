import 'package:app_rick_and_morty/models/personagem.model.dart';

class PersonagemResponse {
  final String? next;
  final List<Personagem> results;

  PersonagemResponse({required this.results, required this.next});

  factory PersonagemResponse.fromMap(Map<String, dynamic> map) {
    return PersonagemResponse(
      next: map["info"]["next"],
      results: (map["results"] as List)
          .map((personagem) => Personagem.fromMap(personagem))
          .toList(),
    );
  }
}
