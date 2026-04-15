import 'package:app_rick_and_morty/colors.dart';
import 'package:app_rick_and_morty/pages/Detail/detail.page.dart';
import 'package:app_rick_and_morty/pages/home/store/home.store.dart';
import 'package:app_rick_and_morty/widgets/card_grid_personagem.widget.dart';
import 'package:app_rick_and_morty/widgets/card_list_personagem.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore store = HomeStore();

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    store.loadPersonagens();
    scrollController.addListener(scrollListener);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      store.loadPersonagens();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Rick and Morty",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Procure pelo seu personagem",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                key: const Key("Filtro"),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: primaryColor,
                  hint: const Text(
                    "Nome ou identificador",
                    style: TextStyle(color: Colors.black45),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.black45),
                ),
                onChanged: store.setSearch,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Spacer(),
                  Observer(
                    builder: (context) {
                      return IconButton(
                        onPressed: () {
                          store.toggleView();
                        },
                        icon: store.isGrid
                            ? const Icon(Icons.list, color: primaryColor)
                            : const Icon(Icons.grid_view, color: primaryColor),
                      );
                    },
                  ),
                ],
              ),
              Observer(
                builder: (context) {
                  final listaFiltrada = store.filteredPersonagens;
                  if (store.isGrid) {
                    return Expanded(
                      child: GridView.builder(
                        key: const Key("gridView"),
                        controller: scrollController,
                        itemCount:
                            listaFiltrada.length + (store.isLoading ? 1 : 0),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2 / 2.8,
                            ),
                        itemBuilder: (context, index) {
                          if (index == listaFiltrada.length) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          final personagem = listaFiltrada[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(personagem: personagem),
                                ),
                              );
                            },
                            child: CardGridPersonagem(
                              key: const Key("gridCard"),
                              personagem: personagem,
                              store: store,
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        key: const Key("listView"),
                        controller: scrollController,
                        itemCount:
                            listaFiltrada.length + (store.isLoading ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index == listaFiltrada.length) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          final personagem = listaFiltrada[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(personagem: personagem),
                                ),
                              );
                            },
                            child: CardListPersonagem(
                              key: const Key("listCard"),
                              personagem: personagem,
                              store: store,
                            ),
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
