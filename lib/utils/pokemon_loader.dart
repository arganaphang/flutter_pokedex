import 'dart:convert';

import 'package:pokemon/entity/pokemon.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<List<Pokemon>> loadPokemons() async {
  final str = await rootBundle.loadString("assets/pokedex.json");
  final data = (jsonDecode(str) as List<dynamic>)
      .map((e) => Pokemon.fromJson(e))
      .toList();
  return data;
}
