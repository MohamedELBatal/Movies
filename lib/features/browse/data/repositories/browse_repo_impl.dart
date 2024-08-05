import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/browse/data/data_sources/browse_ds.dart';
import 'package:movies_app/features/browse/data/models/BrowseModel.dart';
import 'package:movies_app/features/browse/domain/repositories/browse_repo.dart';

class BrowseRepoImpl implements BrowseRepo {
  BrowseDS homeDS;

  BrowseRepoImpl(this.homeDS);

  @override
  Future<Either<Failures, BrowseModel>> getBrowse() async {
    try {
      var result = await homeDS.getBrowse();
      return right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
