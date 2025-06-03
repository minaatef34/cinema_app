import 'package:flutter/material.dart';

import '../widgets/selection_content.dart';

class OnboardingPage2 extends StatelessWidget {
  final List<String> genres = [
    "Action",
    "Adventure",
    "Adventure",
    "Drama",
    "Comedy",
    "Crime",
    "Documentary",
    "Sports",
    "Fantasy",
    "Horhor",
    "Music",
    "Western",
    "Horhor",
    "Thriller",
    "Sci-fi",
  ];

  OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SelectionContent(genres: genres),
      ),
    );
  }
}
