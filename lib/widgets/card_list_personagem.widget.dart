import 'package:flutter/material.dart';

class CardListPersonagem extends StatelessWidget {
  final int id;
  final String name;
  final String imageUrl;
  final String status;
  final String species;
  final String gender;

  const CardListPersonagem({
    super.key,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.status,
    required this.species,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),

        child: Row(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl, width: 120),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    "$status - $species",
                    style: const TextStyle(color: Colors.black45),
                  ),
                  Text(gender, style: const TextStyle(color: Colors.black45)),
                  Align(
                    alignment: AlignmentGeometry.bottomRight,
                    child: Text(
                      "$id",
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
