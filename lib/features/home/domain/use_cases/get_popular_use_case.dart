import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/home/data/models/PopularModel.dart';
import 'package:movies_app/features/home/domain/repositories/home_repo.dart';

class GetPopularUseCase{
  HomeRepo repo;

  GetPopularUseCase(this.repo);

  Future<Either<Failures, PopularModel>> call()=> repo.getPopular();
}