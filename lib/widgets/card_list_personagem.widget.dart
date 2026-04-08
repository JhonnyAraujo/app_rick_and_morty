import 'package:app_rick_and_morty/models/personagem.model.dart';
import 'package:app_rick_and_morty/pages/home/store/home.store.dart';
import 'package:flutter/material.dart';

class CardListPersonagem extends StatefulWidget {
  final Personagem personagem;
  final HomeStore store;

  const CardListPersonagem({
    super.key,
    required this.personagem,
    required this.store,
  });

  @override
  State<CardListPersonagem> createState() => _CardListPersonagemState();
}

class _CardListPersonagemState extends State<CardListPersonagem> {
  Future<void> getPaletteColor() async {
    final schemeColor = await ColorScheme.fromImageProvider(
      provider: NetworkImage(widget.personagem.imageUrl),
    );

    if (mounted) {
      widget.store.updatePokemonColor(
        personagemId: widget.personagem.id,
        color: schemeColor.primaryContainer,
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
          padding: const EdgeInsets.all(12.0),
          child: Row(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(widget.personagem.imageUrl, width: 120),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Text(
                      widget.personagem.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                    Text(
                      "${widget.personagem.status} - ${widget.personagem.species}",
                      style: const TextStyle(color: Colors.black45),
                    ),
                    Text(
                      widget.personagem.gender,
                      style: const TextStyle(color: Colors.black45),
                    ),
                    Align(
                      alignment: AlignmentGeometry.bottomRight,
                      child: Text(
                        "${widget.personagem.id}",
                        style: const TextStyle(color: Colors.black45),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
