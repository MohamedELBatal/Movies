import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/browse/data/models/BrowseModel.dart';
import 'package:movies_app/features/browse/domain/repositories/browse_repo.dart';

class GetBrowseUseCase{

  BrowseRepo repo;

  GetBrowseUseCase(this.repo);

  Future<Either<Failures, BrowseModel>>call()=>repo.getBrowse();

}