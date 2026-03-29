import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Rick and Morty"),
              const Text("Procure pelo personagem"),
              const TextField(
                decoration: InputDecoration(
                  hint: Text("Nome ou identificador"),
                  prefix: Icon(Icons.search),
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.list)),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 2.8,
                  ),
                  itemBuilder: (context, index) {
                    return;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
