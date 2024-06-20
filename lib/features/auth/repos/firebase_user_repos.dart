import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/features/auth/models/user_models.dart';
import 'package:fitness_app/features/auth/repos/auth_repos.dart';

class FirebaseUserRepository implements AuthRepository{

  FirebaseUserRepository({
    FirebaseAuth? firebaseAuth
  }):_firebaseAuth=firebaseAuth ?? FirebaseAuth.instance;

  final FirebaseAuth _firebaseAuth;
  

  @override
  Future<void> signIn(String email, String password) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signUp(UserModel userModel, String password) async{
    try {
      final UserCredential user=await _firebaseAuth.createUserWithEmailAndPassword(email: userModel.email, password: password);
      
    } catch (e) {
      log(e.toString());
    }
    throw UnimplementedError();
  }
  
  @override
  Future<void> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<UserModel> resetPassword(String email) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }
}