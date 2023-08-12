part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterSucess extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterFailur extends RegisterState {
  String errMessage;
  RegisterFailur({required this.errMessage});
}
