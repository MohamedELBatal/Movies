import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/search/data/models/SearchModel.dart';

abstract class SearchRepo{
  Future<Either<Failures,SearchModel>>getSearch(searchMovie);
}