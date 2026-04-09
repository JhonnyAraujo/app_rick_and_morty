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
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: ValueKey(personagem.id),
                child: CachedNetworkImage(imageUrl: personagem.imageUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
