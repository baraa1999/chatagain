import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(LoginLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found') {
        emit(LoginFailur(errMessage: 'user not found'));
      } else if (ex.code == 'wrong-password') {
        emit(LoginFailur(errMessage: 'wrong passwordd'));
      }
    } catch (e) {
      emit(LoginFailur(errMessage: 'something with wrong'));
    }
  }

  Future<void> registerUser(
      {required String email, required String password}) async {
    emit(RegisterLoading());

    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(RegisterSucess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found') {
        emit(RegisterFailur(errMessage: 'user not found'));
      } else if (ex.code == 'wrong-password') {
        emit(RegisterFailur(errMessage: 'wrong password'));
      }
    } catch (e) {
      emit(RegisterFailur(errMessage: 'there was in error please try again'));
    }
  }

  @override
  void onChange(Change<AuthState> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }
}
