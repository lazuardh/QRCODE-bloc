part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthStateLogin extends AuthState {}

class AuthStateLoading extends AuthState {}

class AuthStateLogout extends AuthState {}

class AuthStateError extends AuthState {}
