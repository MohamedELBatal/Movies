import 'package:flutter/material.dart';
import 'package:movies_app/features/home/data/models/popular_model.dart'; // استيراد النموذج المستخدم للفيلم

class WatchListTab extends StatelessWidget {
  static const String routeName = "Watch List";

  final List<Response> watchlist; // قائمة الأفلام في قائمة المشاهدة

  const WatchListTab({super.key, required this.watchlist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              "WatchList",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(
            child: watchlist.isEmpty
                ? const Center(
                    child: Text(
                      "No movies added to watchlist",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : ListView.builder(
                    itemCount: watchlist.length,
                    itemBuilder: (context, index) {
                      final movie = watchlist[index];
                      return ListTile(
                        leading: Image.network(
                          'https://image.tmdb.org/t/p/w500${movie.backdropPath}',
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          movie.title ?? 'No Title',
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
