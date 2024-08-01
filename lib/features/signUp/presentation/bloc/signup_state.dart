part of 'signup_bloc.dart';

class SignupState {
  final RequestStatus? status;
  final SignUpModel? model;
  final Failures? failures;

  const SignupState({this.status, this.model, this.failures});

  SignupState copyWith({
    RequestStatus? status,
    SignUpModel? model,
    Failures? failures,
  }) {
    return SignupState(
        model: model ?? this.model,
        failures: failures ?? this.failures,
        status: status ?? this.status);
  }
}

class SignUpInitState extends SignupState {
  const SignUpInitState() : super(status: RequestStatus.init);
}
