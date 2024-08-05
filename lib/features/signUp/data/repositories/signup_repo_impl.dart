import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/signUp/data/data_sources/signup_ds.dart';
import 'package:movies_app/features/signUp/data/models/SignUpModel.dart';
import 'package:movies_app/features/signUp/domain/entities/SignUpRequestModel.dart';
import 'package:movies_app/features/signUp/domain/repositories/signup_repo.dart';

class SignUpRepoImpl implements SignUpRepo{
  SignUpDs signUpDs;
  SignUpRepoImpl(this.signUpDs);
  @override
  Future<Either<Failures, SignUpModel>> signUp(SignUpRequestModel requestModel) async {

    try{
      var result = await signUpDs.signUp(requestModel);
      return Right(result);
    }catch(e){
      return Left(RemoteFailures(e.toString()));
    }
  }

}
