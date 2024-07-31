import 'package:flutter/material.dart';
import 'package:movies_app/features/home/data/models/popular_model.dart';

class MovieItem extends StatelessWidget {
  final Response results;

  const MovieItem({required this.results, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Colors.grey[900]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network("${results.video}"),
          Text(
            "${results.genreIds?.first ?? ""}",
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
