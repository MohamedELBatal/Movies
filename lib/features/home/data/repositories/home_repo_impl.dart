import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/home/data/data_source/home_ds.dart';
import 'package:movies_app/features/home/data/models/PopularModel.dart';
import 'package:movies_app/features/home/data/models/TopRatedModel.dart';
import 'package:movies_app/features/home/data/models/UpComingModel.dart';
import 'package:movies_app/features/home/domain/repositories/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeDS homeDS;

  HomeRepoImpl(this.homeDS);

  @override
  Future<Either<Failures, PopularModel>> getPopular() async {
    try {
      var result = await homeDS.getPopular();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, UpComingModel>> getUpComing() async{
    try {
      var result = await homeDS.getUpComing();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, TopRatedModel>> getTopRated()async {
    try {
      var result = await homeDS.getTopRated();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
