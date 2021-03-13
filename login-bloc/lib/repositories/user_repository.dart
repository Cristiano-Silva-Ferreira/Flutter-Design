import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;

  // Metodo para recuperar os dados do FirebaseAuth
  UserRepository({FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  // Metodo para receber as credenciais do usuário
  Future<void> signInWithCredentials(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // Metodo para fazer login (entrar) no banco de dados
  Future<void> signUp(String email, String password) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // Metodo para sair do banco de dados
  Future<void> signOut() async {
    return Future.wait([_firebaseAuth.signOut()]);
  }

  // Metodo para verificar se o usuário não é nulo
  Future<bool> isSignedIn() async {
    final currentUser = await _firebaseAuth.currentUser();
    return currentUser != null;
  }

  // Metodo para recuperar o usuario
  Future<FirebaseUser> getUser() async {
    return await _firebaseAuth.currentUser();
  }
}
