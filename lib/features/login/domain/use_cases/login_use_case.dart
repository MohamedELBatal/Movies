import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/login/domain/entities/ResponseEntity.dart';
import 'package:movies_app/features/login/domain/repositories/login_repo.dart';

class LoginUseCase{
  LoginRepo repo ;

  LoginUseCase(this.repo);



  Future<Either<Failures, ResponseEntity>> call(String email , String password)=> repo.login(email, password);
}