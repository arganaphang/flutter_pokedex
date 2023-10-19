import 'package:flutter/material.dart';
import 'package:pokemon/entity/pokemon.dart';
import 'package:pokemon/screens/detail/detail_screen.dart';
import 'package:pokemon/utils/int.ext.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(DetailScreen.routeName);
      },
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 110,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.deepOrange.withOpacity(0.2),
                    Colors.deepOrangeAccent.withOpacity(0.03),
                  ],
                  stops: const [
                    0.1,
                    1,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Center(child: Text(pokemon.name.english)),
            ),
          ),
          Positioned(
            top: 0,
            left: 24,
            right: 24,
            bottom: 50,
            child: Image.asset(
              "assets/images/${pokemon.id.leftPad(3)}.png",
            ),
          )
        ],
      ),
    );
  }
}
