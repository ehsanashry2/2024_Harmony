import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ocd/helper/api.dart';
import 'package:ocd/model/authModel/user_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? userName, email, password,dateOfBirth;
  UserModel? userModel;
  String host = "https://3e9c-156-197-61-214.ngrok-free.app";
  Future signUp() async {
    emit(SignupLoading());
    try {
      await Api().post(
        url:
            "$host/api/v1/auth/register?name=$userName&email=$email&password=$password",
      );
      emit(SignupSuccess());
    } catch (e) {
      emit(SignupFailure());
    }
  }

  Future login() async {
    emit(LoginLoading());
    try {
      Map<String, dynamic> user =
          await Api().post(url: "$host/api/v1/auth/login", body: {
        "email": email,
        "password": password,
      });
      userModel = UserModel.fromJson(user);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure());
    }
  }
}
