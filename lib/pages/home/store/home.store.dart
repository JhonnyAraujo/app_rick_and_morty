import 'package:app_rick_and_morty/services/personagem_api.service.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'home.store.g.dart';

// This is the class used by rest of your codebase
class HomeStore = HomeStoreBase with _$HomeStore;

// The store-class
abstract class HomeStoreBase with Store {
  final _service = PersonagemApi();
  int page = 1;

  @observable
  bool isLoading = false;

  @observable
  ObservableList personagens = [].asObservable();

  @action
  Future<void> loadPersonagens() async {
    isLoading = true;

    final personagensResponse = await _service.loadPersonagens(page: page);

    page++;
    personagens.addAll(personagensResponse.results);

    isLoading = false;
  }
}
