import 'package:app_rick_and_morty/colors.dart';
import 'package:app_rick_and_morty/models/personagem.model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Personagem personagem;

  const DetailPage({super.key, required this.personagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
            collapsedHeight: 60,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: ValueKey(personagem.id),
                child: CachedNetworkImage(
                  key: const Key("imageDetails"),
                  imageUrl: personagem.imageUrl,
                  fit: BoxFit.cover,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Text(
                    "${personagem.name.toUpperCase()} | #${personagem.id}",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 10,
                    children: [
                      Chip(
                        label: Text(
                          personagem.status,
                          style: const TextStyle(color: Colors.black),
                        ),
                        backgroundColor: personagem.color,
                        shape: const StadiumBorder(),
                      ),
                      Chip(
                        label: Text(
                          personagem.species,
                          style: const TextStyle(color: Colors.black),
                        ),
                        backgroundColor: personagem.color,
                        shape: const StadiumBorder(),
                      ),
                      Chip(
                        label: Text(
                          personagem.gender,
                          style: const TextStyle(color: Colors.black),
                        ),
                        backgroundColor: personagem.color,
                        shape: const StadiumBorder(),
                      ),
                    ],
                  ),
                  ListTile(
                    title: const Text(
                      "Última localização conhecida:",
                      style: TextStyle(fontSize: 14, color: primaryColor),
                    ),
                    subtitle: Text(
                      personagem.location,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Local de origem:",
                      style: TextStyle(fontSize: 14, color: primaryColor),
                    ),
                    subtitle: Text(
                      personagem.origin,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Quantidade de vezes que apareceu:",
                      style: TextStyle(fontSize: 14, color: primaryColor),
                    ),
                    subtitle: Text(
                      "${personagem.episode.length} episódios",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
