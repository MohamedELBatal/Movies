import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/signUp/data/models/sign_up_model.dart';
import 'package:movies_app/features/signUp/domain/entities/sign_up_request_model.dart';

abstract class SignUpRepo {
  Future<Either<Failures, SignUpModel>> signUp(SignUpRequestModel requestModel);
}
