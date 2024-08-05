import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/browse/data/models/BrowseModel.dart';

class BrowseItem extends StatefulWidget {
  final int index;
  final BrowseModel? browseModel;
  final List<Genres>? genres;

  const BrowseItem({
    super.key,
    this.genres,
    required this.index,
    required this.browseModel,
  });

  @override
  State<BrowseItem> createState() => _BrowseItemState();
}

class _BrowseItemState extends State<BrowseItem> {
  final List<String> images = [
    "assets/images/action.jpg",
    "assets/images/adventure.jpg",
    "assets/images/animation.jpeg",
    "assets/images/comedy.jpg",
    "assets/images/crime.jpg",
    "assets/images/documentry.jpeg",
    "assets/images/drama.jpeg",
    "assets/images/family.jpeg",
    "assets/images/fantasy.jpeg",
    "assets/images/history.jpg",
    "assets/images/horror.jpg",
    "assets/images/music.jpeg",
    "assets/images/mystery.jpg",
    "assets/images/romance.jpg",
    "assets/images/sience fiction.jpg",
    "assets/images/thriller.jpg",
    "assets/images/tv_movie.jpg",
    "assets/images/war.jpeg",
    "assets/images/western.png",
  ];

  @override
  Widget build(BuildContext context) {
    var genre = widget.genres?[widget.index];
    var image = images[widget.index % images.length];

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
                  SizedBox(
                    height: 150,
                    width: 250,
                    child: Image.asset(
                      image, // استخدم الصورة المحلية هنا
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            genre?.name ?? "",
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
