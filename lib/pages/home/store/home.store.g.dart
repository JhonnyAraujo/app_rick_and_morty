// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  Computed<List<Personagem>>? _$filteredPersonagensComputed;

  @override
  List<Personagem> get filteredPersonagens =>
      (_$filteredPersonagensComputed ??= Computed<List<Personagem>>(
        () => super.filteredPersonagens,
        name: 'HomeStoreBase.filteredPersonagens',
      )).value;

  late final _$_isLoadingAtom = Atom(
    name: 'HomeStoreBase._isLoading',
    context: context,
  );

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$searchAtom = Atom(
    name: 'HomeStoreBase.search',
    context: context,
  );

  @override
  String? get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String? value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  late final _$_isGridAtom = Atom(
    name: 'HomeStoreBase._isGrid',
    context: context,
  );

  @override
  bool get _isGrid {
    _$_isGridAtom.reportRead();
    return super._isGrid;
  }

  @override
  set _isGrid(bool value) {
    _$_isGridAtom.reportWrite(value, super._isGrid, () {
      super._isGrid = value;
    });
  }

  late final _$loadPersonagensAsyncAction = AsyncAction(
    'HomeStoreBase.loadPersonagens',
    context: context,
  );

  @override
  Future<void> loadPersonagens() {
    return _$loadPersonagensAsyncAction.run(() => super.loadPersonagens());
  }

  late final _$HomeStoreBaseActionController = ActionController(
    name: 'HomeStoreBase',
    context: context,
  );

  @override
  void setSearch(String? text) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
      name: 'HomeStoreBase.setSearch',
    );
    try {
      return super.setSearch(text);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleView() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
      name: 'HomeStoreBase.toggleView',
    );
    try {
      return super.toggleView();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search},
filteredPersonagens: ${filteredPersonagens}
    ''';
  }
}
