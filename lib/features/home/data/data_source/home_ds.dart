import 'package:movies_app/features/home/data/models/PopularModel.dart';
import 'package:movies_app/features/home/data/models/TopRatedModel.dart';
import 'package:movies_app/features/home/data/models/UpComingModel.dart';

abstract class HomeDS{

Future<PopularModel>getPopular();
Future<UpComingModel>getUpComing();
Future<TopRatedModel>getTopRated();
}