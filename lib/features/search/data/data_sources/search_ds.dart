import 'package:movies_app/features/search/data/models/SearchModel.dart';

abstract class SearchDS{
  Future<SearchModel>getSearch(searchMovie);
}