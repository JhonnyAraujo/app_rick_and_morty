import 'package:app_rick_and_morty/models/personagem_response.model.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class PersonagemApi {
  late final Dio _dio;

  PersonagemApi() {
    _dio.options.baseUrl = "https://rickandmortyapi.com/api/character";
  }

  Future loadPersonagem({required int offset}) async {
    final response = await _dio.get("/$offset");

    if (response.statusCode != HttpStatus.ok) {
      throw Exception("Erro ao buscar os pokemons na API");
    }

    return PersonagemResponse.fromMap(response.data);
  }
}
