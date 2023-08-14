part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

class RegisterInitial extends AuthState {}

class RegisterSucess extends AuthState {}

class RegisterLoading extends AuthState {}

class RegisterFailur extends AuthState {
  String errMessage;
  RegisterFailur({required this.errMessage});
}

class LoginSuccess extends AuthState {}

class LoginLoading extends AuthState {}

class LoginFailur extends AuthState {
  String errMessage;
  LoginFailur({required this.errMessage});
}
