import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthStateLogout()) {
    FirebaseAuth auth = FirebaseAuth.instance;
    on<AuthEventLogin>((event, emit) async {
      //fungsi login
      try {
        emit(AuthStateLoading());
        await auth.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(AuthStateLogin());
      } catch (error) {
        throw Exception("error login: $error");
      }
    });

    on<AuthEventLogout>((event, emit) async {
      try {
        emit(AuthStateLoading());
        await auth.signOut();
        emit(AuthStateLogout());
      } on FirebaseAuthException catch (error) {
        emit(AuthStateError());
      } catch (error) {
        emit(AuthStateError());
        throw Exception("error login: $error");
      }
    });
  }
}
