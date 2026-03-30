import 'package:flutter/material.dart';

class CardPersonagem extends StatelessWidget {
  const CardPersonagem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("1"),
            const SizedBox(height: 12),
            Image.network(
              "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
            ),
            const SizedBox(height: 12),
            const Text(
              "Rick Sanchez",
              style: TextStyle(
                color: Colors.black54,
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
