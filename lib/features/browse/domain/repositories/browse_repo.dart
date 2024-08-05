import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/browse/data/models/BrowseModel.dart';

abstract class BrowseRepo{
  Future<Either<Failures,BrowseModel>>getBrowse();
}