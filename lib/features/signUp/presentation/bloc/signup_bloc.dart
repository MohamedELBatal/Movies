import 'package:bloc/bloc.dart';
import 'package:movies_app/core/enum/enums.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/signUp/data/models/sign_up_model.dart';
import 'package:movies_app/features/signUp/domain/entities/sign_up_request_model.dart';
import 'package:movies_app/features/signUp/domain/use_cases/sign_up_use_case.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignUpUseCase signUpUseCase;

  SignupBloc(this.signUpUseCase) : super(const SignUpInitState()) {
    on<SignUpButtonEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      var result = await signUpUseCase(event.requestModel);
      result.fold((l) {
        emit(state.copyWith(status: RequestStatus.failures, failures: l));
      }, (r) {
        emit(state.copyWith(status: RequestStatus.success, model: r));
      });
    });
  }
}
