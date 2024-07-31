import 'package:movies_app/features/signUp/data/models/sign_up_model.dart';
import 'package:movies_app/features/signUp/domain/entities/sign_up_request_model.dart';

abstract class SignUpDs {
  Future<SignUpModel> signUp(SignUpRequestModel requestModel);
}
