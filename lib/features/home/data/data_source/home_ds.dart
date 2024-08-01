import 'package:movies_app/features/home/data/models/popular_model.dart';
import 'package:movies_app/features/home/data/models/top_rated_model.dart';
import 'package:movies_app/features/home/data/models/up_coming_model.dart';

abstract class HomeDS {
  Future<PopularModel> getPopular();
  Future<UpComingModel> getUpComing();
  Future<TopRatedModel> getTopRated();
}
