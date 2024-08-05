import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/core/api/end_points.dart';
import 'package:movies_app/features/home/data/data_source/home_ds.dart';
import 'package:movies_app/features/home/data/models/PopularModel.dart';
import 'package:movies_app/features/home/data/models/TopRatedModel.dart';
import 'package:movies_app/features/home/data/models/UpComingModel.dart';

class HomeDsImpl implements HomeDS {
  ApiManager apiManager;

  HomeDsImpl(this.apiManager);

  @override
  Future<PopularModel> getPopular() async {

    var response = await apiManager.getData(EndPoints.popular);

    PopularModel popularModel=PopularModel.fromJson(response.data);
    return popularModel;
  }

  @override
  Future<UpComingModel> getUpComing() async{
    var response = await apiManager.getData(EndPoints.upComing);

    UpComingModel upComingModel =UpComingModel.fromJson(response.data);
    return upComingModel;
  }

  @override
  Future<TopRatedModel> getTopRated() async{
    ApiManager apiManager = ApiManager();
    var response = await apiManager.getData(EndPoints.upComing);

     TopRatedModel topRatedModel =TopRatedModel.fromJson(response.data);
    return topRatedModel;
  }
}
