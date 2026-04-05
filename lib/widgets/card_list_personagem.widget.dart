import 'package:app_rick_and_morty/models/personagem.model.dart';
import 'package:flutter/material.dart';

class CardListPersonagem extends StatelessWidget {
  final Personagem personagem;

  const CardListPersonagem({super.key, required this.personagem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),

        child: Row(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(personagem.imageUrl, width: 120),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    personagem.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    "${personagem.status} - ${personagem.species}",
                    style: const TextStyle(color: Colors.black45),
                  ),
                  Text(
                    personagem.gender,
                    style: const TextStyle(color: Colors.black45),
                  ),
                  Align(
                    alignment: AlignmentGeometry.bottomRight,
                    child: Text(
                      "${personagem.id}",
                      style: const TextStyle(color: Colors.black45),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
