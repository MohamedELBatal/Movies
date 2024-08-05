part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignUpButtonEvent extends SignupEvent {
  SignUpRequestModel requestModel;

  SignUpButtonEvent(this.requestModel);
}
