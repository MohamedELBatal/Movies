import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/home/data/models/UpComingModel.dart';
import 'package:movies_app/features/home/domain/repositories/home_repo.dart';

class GetUpComingUseCase{

  HomeRepo repo;
  GetUpComingUseCase(this.repo);

  Future<Either<Failures, UpComingModel>> call()=> repo.getUpComing();
}