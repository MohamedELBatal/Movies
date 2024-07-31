import 'package:bloc/bloc.dart';
import 'package:movies_app/core/enum/enums.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/login/domain/entities/response_entity.dart';
import 'package:movies_app/features/login/domain/use_cases/login_use_case.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase) : super(const LoginInitialState()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<LoginButtonEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));

      var result = await loginUseCase.call(event.email, event.password);
      result.fold(
          (l) => {
                emit(
                    state.copyWith(status: RequestStatus.failures, failures: l))
              },
          (r) => {
                emit(state.copyWith(
                    status: RequestStatus.success, responseEntity: r))
              });
    });
  }
}
