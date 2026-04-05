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

  final _personagens = ObservableList();
  ObservableList get personagens => _personagens;

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
