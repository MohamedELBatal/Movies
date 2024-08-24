// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:movies_app/core/api/api_manager.dart';
// import 'package:movies_app/core/utils/app_colors.dart';
// import 'package:movies_app/features/home/presentation/cubit/cubit.dart';
//
// import '../../../../core/components/constants.dart';
//
// class PopularMovies extends StatelessWidget {
//   const PopularMovies({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       items: ApiManager.getMoviesData(context).resultsPopular.map((results) {
//         return return Stack(
//           alignment: Alignment.bottomLeft,
//           children: [
//             Column(
//               children: [
//                 Builder(
//                   builder: (context) {
//                     return Image.network(
//                       "${Constants.baseURLImage}${results.backdropPath}",
//                       fit: BoxFit.cover,
//                       height: 217.h,
//                     );
//                   },
//                 ),
//               ],
//             ),
//             Container(
//               padding: EdgeInsets.only(left: 25.w, right: 10.w),
//               height: 200.h,
//               child: Row(
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(5.r),
//                     child: Stack(
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             // Navigator.pushNamed(context, MovieDetails.routeName,
//                             //     arguments: results.id.toString());
//                           },
//                           child: Image.network(
//                             "${Constants.baseURLImage}${results.posterPath}",
//                             width: 130.w,
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                         Positioned(
//                           top: -7.h,
//                           left: -11.w,
//                           child: Stack(
//                             alignment: Alignment.center,
//                             children: [
//                               Icon(
//                                 Icons.bookmark,
//                                 color:
//                                 AppColors.BlueColor.withOpacity(0.9),
//                                 size: 50.sp,
//                               ),
//                               Icon(
//                                 Icons.add,
//                                 color: AppColors.BlueColor.withOpacity(0.9),
//                                 size: 20.sp,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10.w,
//                   ),
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           results.originalTitle ?? "",
//                           style: AppStyles.title_15,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         Text(
//                           results.releaseDate.toString().substring(0, 4),
//                           style: AppStyles.descriptionInter_10,
//                         ),
//                         SizedBox(
//                           height: 35.h,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         );
//       }).toList(),
//       options: CarouselOptions(
//         height: 295.h,
//         autoPlay: true,
//         enlargeCenterPage: true,
//         scrollDirection: Axis.horizontal,
//       ),
//     );
//   }
// }
