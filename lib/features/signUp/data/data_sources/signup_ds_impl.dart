
import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/core/api/end_points.dart';
import 'package:movies_app/features/signUp/data/data_sources/signup_ds.dart';
import 'package:movies_app/features/signUp/data/models/SignUpModel.dart';
import 'package:movies_app/features/signUp/domain/entities/SignUpRequestModel.dart';

class SignUpDsImpl implements SignUpDs{

  @override
  Future<SignUpModel> signUp(SignUpRequestModel requestModel) async{
    ApiManager apiManager= ApiManager();

    var response = await apiManager.getData(EndPoints.signUp,param: requestModel.toJson());

    SignUpModel signUpModel = SignUpModel.fromJson(response.data);
    return signUpModel;
  }

}