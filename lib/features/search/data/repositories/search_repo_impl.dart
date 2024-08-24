import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/search/data/data_sources/search_ds.dart';
import 'package:movies_app/features/search/data/models/SearchModel.dart';
import 'package:movies_app/features/search/domain/repositories/search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  SearchDS homeDS;

  SearchRepoImpl(this.homeDS);

  @override
  Future<Either<Failures, SearchModel>> getSearch(searchMovie) async {
    try {
      var result = await homeDS.getSearch(searchMovie);
      result.query = "query";
      return right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
