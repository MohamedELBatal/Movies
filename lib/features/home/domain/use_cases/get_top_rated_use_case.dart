import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/home/data/models/TopRatedModel.dart';
import 'package:movies_app/features/home/domain/repositories/home_repo.dart';


class GetTopRatedUseCase{

  HomeRepo repo;
  GetTopRatedUseCase(this.repo);

  Future<Either<Failures, TopRatedModel>> call()=> repo.getTopRated();
}