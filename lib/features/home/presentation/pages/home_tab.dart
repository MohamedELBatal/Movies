import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/components/constants.dart';
import 'package:movies_app/features/home/data/models/PopularModel.dart';
import 'package:movies_app/features/home/data/models/TopRatedModel.dart';
import 'package:movies_app/features/home/presentation/bloc/home_bloc.dart';

import '../../../../core/api/api_manager.dart';
import '../../data/data_source/home_ds_impl.dart';
import '../../data/repositories/home_repo_impl.dart';
import '../../domain/use_cases/get_popular_use_case.dart';
import '../../domain/use_cases/get_top_rated_use_case.dart';
import '../../domain/use_cases/get_upcoming_use_case.dart';

class HomeTab extends StatefulWidget {
  static const String routeName = "home";

  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  // final int _currentIndex = 0;
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        getPopularUseCase: GetPopularUseCase(
          HomeRepoImpl(
            HomeDsImpl(
              ApiManager(),
            ),
          ),
        ),
        getUpComingUseCase: GetUpComingUseCase(
          HomeRepoImpl(
            HomeDsImpl(
              ApiManager(),
            ),
          ),
        ),
        getTopRatedUseCase: GetTopRatedUseCase(
          HomeRepoImpl(
            HomeDsImpl(
              ApiManager(),
            ),
          ),
        ),
      )
        ..add(const HomeEvent.getPopular())
        ..add(const HomeEvent.getTopRated())
        ..add(const HomeEvent.getUpComing()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 220,
                        // ارتفاع الـ slider
                        autoPlay: true,
                        // تشغيل تلقائي
                        autoPlayInterval: const Duration(seconds: 4),
                        // الفاصل الزمني للتشغيل التلقائي
                        enlargeCenterPage: true,
                        // تكبير العنصر النشط
                        aspectRatio: 16 / 9,
                        // نسبة العرض إلى الارتفاع
                        viewportFraction: 1.0, // نسبة عرض الصفحة
                      ),
                      items: (state.popularModel?.data ?? []).map((item) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: item.backdropPath != null
                                        ? CachedNetworkImage(
                                            imageUrl:
                                                '${Constants.BASE_URL_IMAGE}${item.backdropPath}',
                                            fit: BoxFit.fill,
                                            placeholder: (context, url) =>
                                                const Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            ),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                          )
                                        : const Center(
                                            child: Text(
                                              'No Image Available',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                  ),
                                  // إضافة الطبقة الأمامية التي تحتوي على معلومات الفيلم

                                  Positioned(
                                    bottom: 0, // تحديد موضع النص أسفل الصورة
                                    left: 0, // تحديد المسافة من اليسار
                                    right: 0, // تحديد المسافة من اليمين
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(1.0),
                                        // خلفية شبه شفافة
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            item.title ?? 'Unknown Title',
                                            // اسم الفيلم
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(width: 45,),
                                              Text(
                                                ' ${item.releaseDate}    Rate : ${item.voteAverage} ',
                                                // تفاصيل الفيلم
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.9),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Positioned(
                                        bottom : 0,
                                        child: SizedBox(
                                          height: 130,
                                          width: 120,
                                          child: CachedNetworkImage(
                                            imageUrl:
                                            "${Constants.BASE_URL_IMAGE}${item.backdropPath}",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 90,
                                        left: -10.w,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              isBookmarked = !isBookmarked;
                                            });
                                          },
                                          child: Stack(children: [
                                            ImageIcon(
                                              const AssetImage(
                                                  "assets/images/bookmark.png"),
                                              size: 50.sp,
                                              // color: const Color(0xff514F4F),
                                              color: Colors.grey[800],
                                            ),
                                            Positioned(
                                              top: 10.h,
                                              left: 13.w,
                                              child: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // إضافة زر التشغيل
                                  const Positioned(
                                    top: 0,
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Center(
                                      child: Icon(
                                        Icons.play_circle_outline,
                                        color: Colors.white60,
                                        size: 50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    )
                  ],
                ),
                Container(
                  color: const Color(0xff282A28),
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.w, bottom: 10.h),
                        child: Text(
                          'New Releases',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      (state.popularModel != null)
                          ? newRelease(
                              (state.popularModel?.data ?? []).cast<Response>())
                          : SizedBox(
                              height: 270.h,
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: const Color(0xff282A28),
                  // لون الخلفية لقسم Recommended
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.w, bottom: 10.h),
                        child: Text(
                          'Recommended',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      (state.topRatedModel != null)
                          ? Recommended((state.topRatedModel?.responses ?? []))
                          : SizedBox(
                              height: 280.h,
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget newRelease(List<Response> data) => Container(
        height: 155.h,
        margin: EdgeInsets.only(left: 16.w),
        child: data.isEmpty
            ? const Center(
                child: Text('No Results Found'),
              )
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, i) {
                  return Container(
                    width: 155.w,
                    margin: EdgeInsets.only(right: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 150.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    '${Constants.BASE_URL_IMAGE}${data[i].backdropPath}',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Positioned(
                              top: -10.h,
                              left: -12.w,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isBookmarked = !isBookmarked;
                                  });
                                },
                                child: Stack(children: [
                                  ImageIcon(
                                    const AssetImage(
                                        "assets/images/bookmark.png"),
                                    size: 50.sp,
                                    // color: const Color(0xff514F4F),
                                    color: Colors.grey[800],
                                  ),
                                  Positioned(
                                    top: 10.h,
                                    left: 13.w,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ],
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(top: 8.h),
                        //   child: Text(
                        //     data[i].title ?? '',
                        //     style: GoogleFonts.poppins(
                        //       color: Colors.white,
                        //       fontSize: 14.sp,
                        //       fontWeight: FontWeight.w500,
                        //     ),
                        //     maxLines: 1,
                        //     overflow: TextOverflow.ellipsis,
                        //   ),
                        // ),
                      ],
                    ),
                  );
                },
              ),
      );

  Widget Recommended(List<Responses> results) => Container(
        height: 250.h,
        margin: EdgeInsets.only(left: 16.w),
        child: results.isEmpty
            ? const Center(
                child: Text('No Results Found'),
              )
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: results.length,
                itemBuilder: (context, i) {
                  return Container(
                    width: 155.w,
                    margin: EdgeInsets.only(right: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 150.h,
                              child: results[i].backdropPath != null
                                  ? CachedNetworkImage(
                                      imageUrl:
                                          'https://image.tmdb.org/t/p/w500${results[i].backdropPath}',
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    )
                                  : const Center(
                                      child: Text(
                                        'No Image',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                            ),
                            Positioned(
                              top: -10.h,
                              left: -12.w,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isBookmarked = !isBookmarked;
                                  });
                                },
                                child: Stack(children: [
                                  ImageIcon(
                                    const AssetImage(
                                        "assets/images/bookmark.png"),
                                    size: 50.sp,
                                    // color: const Color(0xff514F4F),
                                    color: Colors.grey[800],
                                  ),
                                  Positioned(
                                    top: 10.h,
                                    left: 13.w,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: const Color(0xff343534),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 10.h,
                              left: 8.w,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  results[i].title ?? 'No Title',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 4.h),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 18.sp),
                                    SizedBox(width: 4.w),
                                    Text(
                                      '${results[i].voteAverage ?? 0.0}',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  results[i].releaseDate ?? 'Unknown',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
      );

  Widget Popularity(List<Response>? data) => Container(
        height: 250.h,
        child: data!.isEmpty
            ? const Center(
                child: Text('No Results Found'),
              )
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data!.length,
                itemBuilder: (context, i) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    margin: EdgeInsets.only(right: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              child: data[i].backdropPath != null
                                  ? CachedNetworkImage(
                                      imageUrl:
                                          'https://image.tmdb.org/t/p/w500${data[i].backdropPath}',
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    )
                                  : const Center(
                                      child: Text(
                                        'No Image',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
      );
}
