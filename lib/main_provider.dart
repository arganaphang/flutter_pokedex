import 'package:flutter/foundation.dart';
import 'package:pokemon/entity/pokemon.dart';
import 'package:pokemon/utils/pokemon_loader.dart';

class ApplicationProvider with ChangeNotifier {
  List<Pokemon> _pokemons = [];
  String search = "";
  List<Pokemon> get pokemons => _pokemons
      .where((pokemon) => pokemon.name.english.toLowerCase().contains(search))
      .toList();

  ApplicationProvider() {
    load();
  }

  void load() {
    loadPokemons().then((res) {
      _pokemons = res;
      notifyListeners();
    });
  }

  void onChangeSearch(String newValue) {
    search = newValue;
    notifyListeners();
  }
}
