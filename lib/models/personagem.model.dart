class Personagem {
  final int id;
  final String name;
  final String status;
  final String species;
  final String gender;
  final String imageUrl;

  Personagem({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.imageUrl,
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
}
