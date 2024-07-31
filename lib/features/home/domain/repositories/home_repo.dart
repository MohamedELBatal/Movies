import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/home/data/models/popular_model.dart';
import 'package:movies_app/features/home/data/models/top_rated_model.dart';
import 'package:movies_app/features/home/data/models/up_coming_model.dart';

abstract class HomeRepo {
  Future<Either<Failures, PopularModel>> getPopular();
  Future<Either<Failures, UpComingModel>> getUpComing();
  Future<Either<Failures, TopRatedModel>> getTopRated();
}
