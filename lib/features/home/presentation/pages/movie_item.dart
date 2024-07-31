import 'package:flutter/material.dart';
import 'package:movies_app/features/home/data/models/movies_details_model.dart';

class MovieItem extends StatelessWidget {
  final Genres genres;

  final bool selected;

  const MovieItem({required this.selected, required this.genres, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.green),
          color: selected ? Colors.green : Colors.transparent),
      child: Text(
        genres.name ?? "",
        style: TextStyle(color: selected ? Colors.white : Colors.green),
      ),
    );
  }
}
