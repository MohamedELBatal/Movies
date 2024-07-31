part of 'signup_bloc.dart';

abstract class SignupEvent {}

class SignUpButtonEvent extends SignupEvent {
  final SignUpRequestModel requestModel;

  SignUpButtonEvent(this.requestModel);
}
