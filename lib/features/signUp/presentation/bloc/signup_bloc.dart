import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/enum/enums.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/signUp/data/models/SignUpModel.dart';
import 'package:movies_app/features/signUp/domain/entities/SignUpRequestModel.dart';
import 'package:movies_app/features/signUp/domain/use_cases/signUpUseCase.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignUpUseCase signUpUseCase;

  SignupBloc(this.signUpUseCase) : super(SignUpInitState()) {
    on<SignUpButtonEvent>((event, emit) async {
      emit(state.copyWith(
          status: RequestStatus.loading));
          var result =await signUpUseCase(event.requestModel);
          result.fold((l)
      {
        emit(
            state.copyWith(status: RequestStatus.failures,
            failures: l));
      },

      (r){
      emit(state.copyWith(
      status: RequestStatus.success,
      model: r
      ));
      });
    });
  }
}
