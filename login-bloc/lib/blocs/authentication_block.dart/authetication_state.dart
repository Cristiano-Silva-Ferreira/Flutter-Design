import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AutheticationState extends Equatable {
  AutheticationState();

  @override
  List<Object> get props => [];
}

class AutheticationInitial extends AutheticationState {}

class AutheticationSuccess extends AutheticationState {
  final FirebaseUser firebaseUser;

  AutheticationSuccess(this.firebaseUser);

  @override
  List<Object> get props => [firebaseUser];
}

class AuthenticationFailure extends AutheticationState {}
