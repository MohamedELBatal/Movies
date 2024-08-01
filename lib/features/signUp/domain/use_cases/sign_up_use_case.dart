import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/signUp/data/models/sign_up_model.dart';
import 'package:movies_app/features/signUp/domain/entities/sign_up_request_model.dart';
import 'package:movies_app/features/signUp/domain/repositories/signup_repo.dart';

class SignUpUseCase {
  SignUpRepo repo;

  SignUpUseCase(this.repo);

  Future<Either<Failures, SignUpModel>> call(SignUpRequestModel requestModel) =>
      repo.signUp(requestModel);
}
