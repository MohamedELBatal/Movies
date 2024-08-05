import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/home/data/models/PopularModel.dart';
import 'package:movies_app/features/home/data/models/TopRatedModel.dart';
import 'package:movies_app/features/home/data/models/UpComingModel.dart';

abstract class HomeRepo{

Future<Either<Failures,PopularModel>>getPopular();
Future<Either<Failures,UpComingModel>>getUpComing();
Future<Either<Failures,TopRatedModel>>getTopRated();
}