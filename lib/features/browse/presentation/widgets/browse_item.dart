import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/features/browse/data/models/BrowseModel.dart';
import 'package:movies_app/features/browse/data/models/DiscoverMovieModel.dart';

class BrowseItem extends StatefulWidget {
  final int index;
  final BrowseModel? browseModel;
  final List<Genres>? genres;

  BrowseItem({
    super.key,
    this.genres,
    required this.index,
    required this.browseModel,
  });

  @override
  State<BrowseItem> createState() => _BrowseItemState();
}

class _BrowseItemState extends State<BrowseItem> {
  String? imageUrl;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _loadImageForGenre();
  }

  void _loadImageForGenre() async {
    if (widget.genres == null) return;
    var genreId = widget.genres![widget.index].id;

    print("Loading movies for genre ID: $genreId");

    try {
      DiscoverMovieModel? movies = await ApiManager.getMoviesData(genreId);
      print("Movies data: $movies");
      if (movies != null && movies.results != null && movies.results!.isNotEmpty) {
        setState(() {
          imageUrl = "https://image.tmdb.org/t/p/w500${movies.results![0].posterPath}";
        });
      } else {
        print("No movies found for this genre");
      }
    } catch (e) {
      print("Error loading image for genre: $e");
    }
  }


  @override
  Widget build(BuildContext context) {
    var genre = widget.genres?[widget.index];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
      child: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                // يمكن إضافة إجراء عند الضغط على العنصر
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  if (imageUrl != null)
                    Container(
                      height: 150,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: NetworkImage(imageUrl!),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  Text(
                    genre?.name ?? "",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
