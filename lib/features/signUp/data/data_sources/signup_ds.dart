

import 'package:movies_app/features/signUp/data/models/SignUpModel.dart';
import 'package:movies_app/features/signUp/domain/entities/SignUpRequestModel.dart';

abstract class SignUpDs{

Future<SignUpModel>  signUp(SignUpRequestModel requestModel);

}