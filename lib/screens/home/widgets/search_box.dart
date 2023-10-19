import 'package:flutter/material.dart';
import 'package:pokemon/main_provider.dart';
import 'package:provider/provider.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.15),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              fillColor: Colors.white30,
              hintText: "Search here...",
            ),
            onChanged: (value) {
              Provider.of<ApplicationProvider>(context, listen: false)
                  .onChangeSearch(value);
            },
          ),
        ),
      ),
    );
  }
}
