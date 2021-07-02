import 'package:gp_app/models/models.dart';

abstract class LoginStates {}

class LoginInitialState extends LoginStates{}

class LoginSuccessState extends LoginStates{
  final loginModel;

  LoginSuccessState(this.loginModel);

}

class LoginLoadingState extends LoginStates{
}

class LoginErrorState extends LoginStates{
  final String error;
  LoginErrorState(this.error);
}

class RegisterInitialState extends LoginStates{}

class RegisterSuccessState extends LoginStates{
  final userModel;

  RegisterSuccessState(this.userModel);

}

class RegisterLoadingState extends LoginStates{
}

class RegisterErrorState extends LoginStates{
  final String error;
  RegisterErrorState(this.error);
}
