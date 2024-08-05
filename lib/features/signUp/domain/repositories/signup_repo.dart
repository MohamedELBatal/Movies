import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/signUp/data/models/SignUpModel.dart';
import 'package:movies_app/features/signUp/domain/entities/SignUpRequestModel.dart';

abstract class SignUpRepo {
  Future<Either<Failures, SignUpModel>> signUp(SignUpRequestModel requestModel);
}
