
import 'package:firebase_auth/firebase_auth.dart';

class AuthentificationService{
  final FirebaseAuth _firebaseAuth;
  AuthentificationService(this._firebaseAuth);

  Stream <User> get authStateChanges => _firebaseAuth.authStateChanges();
  Future<String> signOut()async{
  
      await _firebaseAuth.signOut();
      
   
      
    }
  
  Future<String> signIn(String email,String password)async{
   try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return "signed in";
      
    } on FirebaseAuthException catch (e) {
      print(e.message);
      
    }

  }
  Future<String> signUp(String email,String password) async{
    
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return "signed up";
      
    } on FirebaseAuthException catch (e) {
      
      print(e.message);

    }
    

  }

}