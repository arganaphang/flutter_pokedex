import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pokemon/screens/detail/detail_screen.dart';
import 'package:pokemon/screens/home/home_screen.dart';

import 'main_provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ApplicationProvider())],
      child: const Application(),
    ),
  );
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    var baseTheme = ThemeData(brightness: Brightness.dark);
    return MaterialApp(
      theme: baseTheme.copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 15, 15, 15),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        DetailScreen.routeName: (context) => const DetailScreen(),
      },
    );
  }
}
