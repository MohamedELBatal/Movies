import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/login/data/data_sources/remote/login_ds_remote.dart';
import 'package:movies_app/features/login/domain/entities/ResponseEntity.dart';
import 'package:movies_app/features/login/domain/repositories/login_repo.dart';

class LoginRepoImpl implements LoginRepo{
  LoginRemoteDs loginRemoteDs;

  LoginRepoImpl(this.loginRemoteDs);

  @override
  Future<Either<Failures, ResponseEntity>> login(String email, String password)async {
    try{
     var userModel = await loginRemoteDs.login(email, password);
     return Right(userModel);
    }catch(e){
      return Left(RemoteFailures(e.toString()));
    }
  }
}