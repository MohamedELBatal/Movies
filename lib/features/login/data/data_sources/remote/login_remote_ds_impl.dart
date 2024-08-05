import 'package:dio/dio.dart';
import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/core/api/end_points.dart';
import 'package:movies_app/features/login/data/data_sources/remote/login_ds.dart';
import 'package:movies_app/features/login/data/models/UserModel.dart';


class LoginRemoteDSImpl implements LoginRemoteDS {
  @override
  Future<UserModel> login(String email, String password) async {
    ApiManager apiManager = ApiManager();
    Response response = await apiManager.getPost(EndPoints.signUp, body: {
      "email": email,
      "password": password,
    });

    UserModel userModel = UserModel.fromJson(response.data);
    return userModel;
  }
}
