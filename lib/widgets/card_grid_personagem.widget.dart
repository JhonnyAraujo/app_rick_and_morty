import 'package:flutter/material.dart';

class CardGridPersonagem extends StatelessWidget {
  final int id;
  final String name;
  final String imageUrl;

  const CardGridPersonagem({
    super.key,
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            Text("$id", style: const TextStyle(color: Colors.black45)),
            Image.network(imageUrl),
            Text(
              name,
              style: const TextStyle(
                color: Colors.black45,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
