part of 'login_bloc.dart';

class LoginState {
  final RequestStatus? status;

  final ResponseEntity? responseEntity;
  final Failures? failures;

  const LoginState({this.status, this.responseEntity, this.failures});

  LoginState copyWith({
    RequestStatus? status,
    ResponseEntity? responseEntity,
    Failures? failures,
  }) {
    return LoginState(
        status: status ?? this.status,
        failures: failures ?? this.failures,
        responseEntity: responseEntity ?? this.responseEntity);
  }
}

class LoginInitialState extends LoginState {
  const LoginInitialState() : super(status: RequestStatus.init);
}
