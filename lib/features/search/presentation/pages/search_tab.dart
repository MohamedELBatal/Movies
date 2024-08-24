// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:movies_app/core/api/api_manager.dart';
// import 'package:movies_app/features/search/data/data_sources/search_ds_impl.dart';
// import 'package:movies_app/features/search/data/repositories/search_repo_impl.dart';
// import 'package:movies_app/features/search/domain/use_cases/get_search_use_case.dart';
// import 'package:movies_app/features/search/presentation/cubit/search_cubit.dart';
// import 'package:movies_app/features/search/presentation/cubit/search_state_cubit.dart';
//
// class SearchTab extends StatefulWidget {
//   static const String routeName = "Search";
//
//   const SearchTab({super.key});
//
//   @override
//   State<SearchTab> createState() => _SearchTabState();
// }
//
// class _SearchTabState extends State<SearchTab> {
//   String query = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<SearchCubit>(
//       create: (context) => SearchCubit(
//         getSearchUseCase: GetSearchUseCase(
//           SearchRepoImpl(
//             SearchDSImpl(
//               ApiManager(),
//             ),
//           ),
//         ),
//       ),
//       child: BlocConsumer<SearchCubit, SearchState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 25),
//             child: Column(
//               children: [
//                 SearchBar(
//                   leading: const Icon(
//                     Icons.search,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//                   hintText: "Search",
//                   keyboardType: TextInputType.text,
//                   textStyle: const MaterialStatePropertyAll(
//                     TextStyle(color: Colors.white),
//                   ),
//                   hintStyle: const MaterialStatePropertyAll(
//                     TextStyle(color: Colors.white),
//                   ),
//                   backgroundColor:
//                   const MaterialStatePropertyAll(Color(0xFF514F4F)),
//                   onChanged: (value) {
//                     setState(() {
//                       query = value;
//                       context.read<SearchCubit>().getSearch(query); // Replaced the event trigger
//                     });
//                   },
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Expanded(
//                   child: searchResults(state),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget searchResults(SearchState state) {
//     if (state is SearchLoadingState) {
//       return const Center(
//         child: CircularProgressIndicator(),
//       );
//     } else if (state is SearchSuccessState) {
//       if (context.read<SearchCubit>().searchResults.isEmpty) {
//         return const Center(
//           child: Text(
//             "No Movies Found",
//             style: TextStyle(
//               color: Color(0xffffffac),
//               fontSize: 15,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         );
//       }
//       return ListView.builder(
//         itemCount: BlocProvider.of<SearchCubit>(context).searchResults.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(context.read<SearchCubit>().searchResults[index].name ?? ""),
//           );
//         },
//       );
//     } else if (state is SearchErrorState) {
//       return Center(
//         child: Text(
//           "Error ${state.errorMessage}",
//           style: const TextStyle(color: Colors.red, fontSize: 16),
//         ),
//       );
//     }
//     return const Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Center(
//           child: Icon(
//             Icons.local_movies,
//             size: 150,
//             color: Color(0xFFB5B4B4),
//           ),
//         ),
//         Text(
//           "No Movies Found",
//           style: TextStyle(
//               color: Color(0xffffffac),
//               fontSize: 15,
//               fontWeight: FontWeight.w400),
//         ),
//       ],
//     );
//   }
// }
