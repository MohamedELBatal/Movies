import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/core/api/end_points.dart';
import 'package:movies_app/features/browse/data/data_sources/browse_ds.dart';
import 'package:movies_app/features/browse/data/models/BrowseModel.dart';

class BrowseDSImpl implements BrowseDS{
  ApiManager apiManager;

  BrowseDSImpl(this.apiManager);

  @override
  Future<BrowseModel> getBrowse()async {
   var response = await apiManager.getData(EndPoints.browse);
   BrowseModel browseModel = BrowseModel.fromJson(response.data);
   return browseModel;
  }

}