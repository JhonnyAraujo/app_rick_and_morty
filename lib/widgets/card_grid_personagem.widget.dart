import 'package:app_rick_and_morty/models/personagem.model.dart';
import 'package:app_rick_and_morty/pages/home/store/home.store.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardGridPersonagem extends StatefulWidget {
  final Personagem personagem;
  final HomeStore store;

  const CardGridPersonagem({
    super.key,
    required this.personagem,
    required this.store,
  });

  @override
  State<CardGridPersonagem> createState() => _CardGridPersonagemState();
}

class _CardGridPersonagemState extends State<CardGridPersonagem> {
  Color backgroundColor = Colors.white;

  @override
  void initState() {
    super.initState();
    getPaletteColor();
  }

  Future<void> getPaletteColor() async {
    final colorScheme = await ColorScheme.fromImageProvider(
      provider: NetworkImage(widget.personagem.imageUrl),
    );

    if (mounted) {
      widget.store.updatePokemonColor(
        personagemId: widget.personagem.id,
        color: colorScheme.primaryContainer,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: AnimatedContainer(
        duration: const Duration(microseconds: 500),
        color: widget.personagem.color,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 6,
            children: [
              Text(
                "${widget.personagem.id}",
                style: const TextStyle(color: Colors.black45),
              ),
              Hero(
                tag: ValueKey(widget.personagem.id),
                child: CachedNetworkImage(
                  imageUrl: widget.personagem.imageUrl,
                  width: 135,
                ),
              ),
              Text(
                widget.personagem.name,
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
