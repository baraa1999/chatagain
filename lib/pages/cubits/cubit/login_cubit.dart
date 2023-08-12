import 'package:bloc/bloc.dart';
import 'package:chatagain/helper/show_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

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
}
