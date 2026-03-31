import 'package:app_rick_and_morty/services/personagem_api.service.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'home.store.g.dart';

// This is the class used by rest of your codebase
class HomeStore = HomeStoreBase with _$HomeStore;

// The store-class
abstract class HomeStoreBase with Store {
  final _service = PersonagemApi();
  List<int> offset = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
  ];

  @observable
  bool isLoading = false;

  @observable
  ObservableList personagens = [].asObservable();

  @action
  Future<void> loadPersonagens() async {
    isLoading = true;

    final personagensResponse = await _service.loadPersonagens(offset: offset);

    offset += offset;
    personagens.addAll(personagensResponse.lista);

    isLoading = false;
  }
}
