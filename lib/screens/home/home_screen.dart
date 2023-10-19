import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pokemon/main_provider.dart';
import 'package:pokemon/screens/home/widgets/pokemon_card.dart';
import 'package:pokemon/screens/home/widgets/search_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = "/home";

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ApplicationProvider>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              const SearchBox(),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    childAspectRatio: 4 / 5,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                  ),
                  itemCount: provider.pokemons.length,
                  itemBuilder: (ctx, idx) {
                    return PokemonCard(
                      pokemon: provider.pokemons[idx],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
