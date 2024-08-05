import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/login/domain/entities/ResponseEntity.dart';

abstract class LoginRepo{
 Future<Either<Failures,ResponseEntity>> login(String email,String password);
}