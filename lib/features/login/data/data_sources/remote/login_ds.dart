import 'package:movies_app/features/login/data/models/user_model.dart';

abstract class LoginRemoteDS {
  Future<UserModel> login(String email, String password);
}
