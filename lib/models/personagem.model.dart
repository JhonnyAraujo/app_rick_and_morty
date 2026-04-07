import 'package:flutter/material.dart';

class Personagem {
  final int id;
  final String name;
  final String status;
  final String species;
  final String gender;
  final String imageUrl;
  final Color color;

  Personagem({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.imageUrl,
    this.color = Colors.white,
  });

  factory Personagem.fromMap(Map<String, dynamic> map) {
    return Personagem(
      id: map["id"],
      name: map["name"],
      status: map["status"],
      species: map["species"],
      gender: map["gender"],
      imageUrl: map["image"],
    );
  }

  Personagem copyWith({
    int? id,
    String? name,
    String? status,
    String? species,
    String? gender,
    String? imageUrl,
    Color? color,
  }) {
    return Personagem(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      species: species ?? this.species,
      gender: gender ?? this.gender,
      imageUrl: imageUrl ?? this.imageUrl,
      color: color ?? this.color,
    );
  }
}
