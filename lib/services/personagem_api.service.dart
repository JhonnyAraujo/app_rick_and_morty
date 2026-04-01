import 'package:app_rick_and_morty/models/personagem_response.model.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class PersonagemApi {
  late final Dio _dio;

  PersonagemApi() {
    _dio = Dio(BaseOptions(baseUrl: "https://rickandmortyapi.com/api"));
  }

  Future loadPersonagens({required int page}) async {
    final response = await _dio.get("/character?page=$page");

    if (response.statusCode != HttpStatus.ok) {
      throw Exception("Erro ao buscar os pokemons na API");
    }

    return PersonagemResponse.fromMap(response.data);
  }
}
