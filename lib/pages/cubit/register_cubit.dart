import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
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
}
