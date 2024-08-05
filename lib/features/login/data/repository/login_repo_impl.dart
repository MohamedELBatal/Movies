import 'package:dartz/dartz.dart';
import 'package:movies_app/core/cache/shared_pref.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/login/data/data_sources/remote/login_ds.dart';
import 'package:movies_app/features/login/domain/entities/ResponseEntity.dart';
import 'package:movies_app/features/login/domain/repositories/login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  LoginRemoteDS loginRemoteDS;

  LoginRepoImpl(this.loginRemoteDS);

  @override
  Future<Either<Failures, ResponseEntity>> login(
      String email, String password) async {
    try {
      var userModel = await loginRemoteDS.login(email, password);
      CacheHelper.saveData("token", userModel.token);
      return Right(userModel);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
