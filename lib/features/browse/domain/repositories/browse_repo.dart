import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/browse/data/models/browse_model.dart';

abstract class BrowseRepo {
  Future<Either<Failures, BrowseModel>> getBrowse();
}
