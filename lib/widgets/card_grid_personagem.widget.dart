import 'package:app_rick_and_morty/models/personagem.model.dart';
import 'package:flutter/material.dart';

class CardGridPersonagem extends StatelessWidget {
  final Personagem personagem;

  const CardGridPersonagem({super.key, required this.personagem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 6,
          children: [
            Text(
              "${personagem.id}",
              style: const TextStyle(color: Colors.black45),
            ),
            Image.network(personagem.imageUrl, width: 135),
            Text(
              personagem.name,
              style: const TextStyle(
                color: Colors.black45,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
