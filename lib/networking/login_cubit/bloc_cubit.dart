import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gp_app/networking/local/shared_prefrences.dart';
import 'package:gp_app/view/profile/Home.dart';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gp_app/models/models.dart';
import 'package:gp_app/networking/diohelper.dart';
import 'package:gp_app/networking/endpoints_conts.dart';
import 'package:gp_app/networking/login_cubit/bloc_states.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);


  UserData userModel;
  LoginModel loginModel;
void getData() //"eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ5YXNtZWVuIiwiZXhwIjoxNjI1MTMwOTcyLCJpYXQiOjE2MjUwOTQ5NzJ9.1dONoB5Ff3fTbJ1URNqb3wu7J8OqzHfzfJlUs1GFFYQ"
{ 
  DioHelper.getData(url: 'plant/user',
      token: "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ5YXNtZWVuIiwiZXhwIjoxNjI1MTM1NDU1LCJpYXQiOjE2MjUwOTk0NTV9.0UM9SuiH5wPiYw7-a8sIykNGQ96oWlX67-thX1InLFo").then((value) {

   // print(value.data);
   var data = value.data;

    userModel =UserData.fromJson(data[0]);
    loginModel = LoginModel.fromJson(data[0]);
   // print(loginModel.data.userName);
  //  print(loginModel.data.token);
   // print(loginModel.status);

    print(value.statusCode);
    print(userModel.userName);
    emit(LoginSuccessState(loginModel));
  }).catchError((error){print(error.toString());
  emit(LoginErrorState(error.toString()));});
}


  void userLogin({
  @required String userName, @required String password,
}){
    emit(LoginLoadingState());
  DioHelper.postData(
    token: "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJtYXlhcmhhIiwiZXhwIjoxNjI1MjgzMjk3LCJpYXQiOjE2MjUyNDcyOTd9.fvaG3yS0kt_H_D0MinDokZtP5gnpzB_d-ku3_ftDm-I",
      path: LOGIN,
      data: jsonEncode({
        "username": userName,
        "password" : password
      })
  ).then((value) {
    print(value.data);
    if(value.statusCode == 200)
      {
        loginModel = LoginModel.fromJson(value.data);
        print(loginModel.status);
        print(loginModel.message);
        print(loginModel.token);
      }
    else
      {
        print(value.statusCode);
      }
    emit(LoginSuccessState(loginModel));

  }).catchError((error){
    print(error.toString());
    Fluttertoast.showToast(
        msg: "Failed to Log In",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    emit(LoginErrorState(error.toString()));
  });
  }



  void userRegister({
    @required String userName, @required String password,
  }){
    emit(RegisterLoadingState());
    DioHelper.postData(
        token: "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJtYXlhcmhhIiwiZXhwIjoxNjI1MjQwMzg0LCJpYXQiOjE2MjUyMDQzODR9.I0KrvluayWXiqt151_QwyTSxzFPcOlXcInLwLo47BXE",
        path: REGISTER,
        data: jsonEncode({
          "username": userName,
          "password" : password
        })
    ).then((value) {
      print(value.data);
      if(value.statusCode == 200)
      {
        userModel = UserData.fromJson(value.data);
        print(userModel.userName);
        print(userModel.password);
        print(userModel.token);
        Fluttertoast.showToast(
          msg: 'Welcome to your new account',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0,
        );}
      else
      {
        print(value.statusCode);
      }
      emit(RegisterSuccessState(userModel));

    }).catchError((error){
      print(error.toString());
      Fluttertoast.showToast(
          msg: "The username is already used please try another one ",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      emit(LoginErrorState(error.toString()));
    });
  }









  //   Future<String> getToken() async{
  // http.get(Uri.parse('http://192.168.0.105:8080/api/authenticate')).
  // then((value) {
  //   print(value.body);
  //   print(value.statusCode);
  // }).catchError((error){
  //   print(error.toString());
  // });
  //   }

  // Future userrLogin( {@required String userName, @required String password,}) async {
  //   //var token = await getToken();
  //   var body = {
  //     "username": userName,
  //     "password" : password,
  //
  //
  //   };
  //   http.post( Uri.parse('http://192.168.0.105:8080/api/authenticate'),
  //    headers: {
  //     //"Authorization" : "Bearer ",
  //      'Content-Type': 'application/json',
  //      'accept':'application/json'
  //    },
  //     body:jsonEncode(body),
  //
  //   ).then((value) {
  //     if (value.statusCode == 200) {
  //       String data = value.body;
  //       var jsonData = jsonDecode(data);
  //       loginModel = LoginModel.fromJson(jsonData);
  //       print(loginModel.status);
  //       print(loginModel.message);
  //       print(value.statusCode);
  //     } else {
  //       print('Statuss Codeee issss ${value.statusCode}');
  //     }
  //     emit(LoginSuccessState());
  //   }).catchError((error) {
  //
  //     print(error.toString());
  //     emit(LoginErrorState(error.toString()));
  //   });
  // }
  //
  // Future<LoginResponseModel> login ({LoginRequestModel requestModel})async{
  // String url ='http://192.168.0.105:8080/api/authenticate';
  // final response = await http.post(Uri.parse(url),
  // body: requestModel.toJson());
  // if (response.statusCode == 200 || response.statusCode == 400)
  //   {
  //     return LoginResponseModel.fromJson(jsonDecode(response.body));
  //   }
  // else
  //   {
  //     throw Exception('Failed to load data');
  //   }
  // }



}

