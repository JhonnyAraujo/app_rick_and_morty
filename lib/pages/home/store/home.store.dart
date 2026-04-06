import 'package:app_rick_and_morty/models/personagem.model.dart';
import 'package:app_rick_and_morty/services/personagem_api.service.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'home.store.g.dart';

// This is the class used by rest of your codebase
class HomeStore = HomeStoreBase with _$HomeStore;

// The store-class
abstract class HomeStoreBase with Store {
  final PersonagensApi _service = PersonagensApi();
  int _page = 1;

  @observable
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final ObservableList<Personagem> _personagens = <Personagem>[].asObservable();
  ObservableList get personagens => _personagens;

  @observable
  String? search;

  @computed
  List<Personagem> get filteredPersonagens {
    if (search == null) return _personagens.toList();

    return _personagens
        .where(
          (personagem) =>
              personagem.name.toLowerCase().contains(search!.toLowerCase()) ||
              personagem.id.toString() == search,
        )
        .toList();
  }

  @action
  void setSearch(String? text) => search = text;

  @observable
  bool _isGrid = false;
  bool get isGrid => _isGrid;

  @action
  void toggleView() => _isGrid = !_isGrid;

  @action
  Future<void> loadPersonagens() async {
    _isLoading = true;

    final personagensResponse = await _service.loadPersonagens(page: _page);

    _page++;
    _personagens.addAll(personagensResponse.results);

    _isLoading = false;
  }
}
