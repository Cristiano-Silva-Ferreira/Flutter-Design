import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/repositories/user_repository.dart';
import 'authetication_state.dart';
import 'authetication_event.dart';

class AutheticationBloc extends Bloc<AutheticationEvent, AutheticationState> {
  final UserRepository _userRepository;

  AutheticationBloc({UserRepository userRepository})
      : _userRepository = userRepository,
        super(AutheticationInitial());

  @override
  Stream<AutheticationState> mapEventToState(AutheticationEvent event) async* {
    if (event is AutheticationStarted) {
      yield* _mapAuthenticationStartedToState();
    } else if (event is AutheticationLoggedIn) {
      yield* _mapAuthenticationLoggedInToState();
    } else if (event is AutheticationLoggedOut) {
      yield* _mapAuthenticationLoggedOutInToState();
    }
  }

  // Metodo AutheticationLoggedOut
  Stream<AutheticationState> _mapAuthenticationLoggedOutInToState() async* {
    yield AuthenticationFailure();
    _userRepository.signOut();
  }

  // Metodo AutheticationLoggedIn
  Stream<AutheticationState> _mapAuthenticationLoggedInToState() async* {
    yield AutheticationSuccess(await _userRepository.getUser());
  }

  // Metodo AutheticationStarted
  Stream<AutheticationState> _mapAuthenticationStartedToState() async* {
    final isSignedIn = await _userRepository.isSignedIn();
    if (isSignedIn) {
      final firebaseUser = await _userRepository.getUser();
      yield AutheticationSuccess(firebaseUser);
    } else {
      yield AuthenticationFailure();
    }
  }
}
