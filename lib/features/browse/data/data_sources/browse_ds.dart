import 'package:movies_app/features/browse/data/models/browse_model.dart';

abstract class BrowseDS {
  Future<BrowseModel> getBrowse();
}
