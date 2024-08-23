import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/search/data/models/SearchModel.dart';
import 'package:movies_app/features/search/domain/repositories/search_repo.dart';

class GetSearchUseCase{

  SearchRepo repo;

  GetSearchUseCase(this.repo);

  Future<Either<Failures, SearchModel>>call(searchMovie)=>repo.getSearch(searchMovie);

}