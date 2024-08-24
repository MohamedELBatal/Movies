import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/core/api/end_points.dart';
import 'package:movies_app/features/search/data/data_sources/search_ds.dart';
import 'package:movies_app/features/search/data/models/SearchModel.dart';

class SearchDSImpl implements SearchDS {
  ApiManager apiManager;

  SearchDSImpl(this.apiManager);

  @override
  Future<SearchModel> getSearch(searchMovie) async {
    var response = await apiManager.getData(EndPoints.search,param: {
      "query": searchMovie,
    });
    SearchModel searchModel = SearchModel.fromJson(response.data);
    searchModel.query = "query";
    return searchModel;
  }
}
