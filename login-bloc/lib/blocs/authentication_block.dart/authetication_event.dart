import 'package:equatable/equatable.dart';

abstract class AutheticationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AutheticationStarted extends AutheticationEvent {}

class AutheticationLoggedIn extends AutheticationEvent {}

class AutheticationLoggedOut extends AutheticationEvent {}
