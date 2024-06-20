import 'package:fitness_app/features/auth/models/user_models.dart';

abstract class AuthRepository {
  Future<void> signIn(String email,String password);
  Future<void> logOut();
  Future<UserModel> signUp(UserModel userModel,String password);
  Future<UserModel> resetPassword(String email);
}