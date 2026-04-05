import 'package:app_rick_and_morty/models/personagem_response.model.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class PersonagensApi {
  late final Dio _dio;

  PersonagensApi() {
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
