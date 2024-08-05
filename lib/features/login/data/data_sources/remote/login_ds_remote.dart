import 'package:movies_app/features/login/data/models/UserModel.dart';

abstract class LoginRemoteDs {

  Future<UserModel> login(String email, String password);
}