import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/enum/enums.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/login/domain/entities/ResponseEntity.dart';
import 'package:movies_app/features/login/domain/use_cases/login_use_case.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase) : super(LoginInitialState()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<LoginButtonEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));

      var result = await loginUseCase.call(event.email, event.password);
      result.fold(
          (l) =>
              {emit(state.copyWith(status: RequestStatus.failures, failures: l))},
          (r) => {
                emit(state.copyWith(
                    status: RequestStatus.success, responseEntity: r))
              });
    });
  }
}
