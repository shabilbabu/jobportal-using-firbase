import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:job_port/Api/api_url.dart';
import 'package:job_port/Sign%20pages/sign_in/signin_model/signin_model.dart';
import 'package:job_port/bottom/view/bottom_navigation.dart';
import 'package:job_port/services/api_services.dart';

class SignInController with ChangeNotifier {
  final TextEditingController passwordCntroller = TextEditingController();
  final TextEditingController emailCntroller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isLoading = false;


//---------- This function is used for sign in authentication ---------------\\
  // toSignInFunction(BuildContext context) {
  //   if (!formKey.currentState!.validate()) {
  //     return;
  //   } 
  //   isLoading = true;
  //     notifyListeners();
  //     ApiServices().signInFunction(SignInModel(
  //       clientId: ApiUrl().clientId,
  //       clientSecret: ApiUrl().clientSecret,
  //       grandType: 'password',
  //       email: emailCntroller.text.trim(),
  //       password: passwordCntroller.text,
  //     ))
  //     .then((value) {
  //       if(value is Response){
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Account create successfully')));
  //       }
  //     });
  // }


  //----------- Email validation in sign in ------------//
 emailValidate(String? value) {
    if(value==null)return null;
    if (value.trim().isEmpty) {
      return 'email is required';
    } else if (
       ! RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
      return 'Enter valid email';
    }
  }


  //---------- Password validation in sign in ------------------//
   passwordValidate(String? value) {
    if(value==null)return;
    if (value.trim().isEmpty) {
      return 'Password is required';
    } else if (value.trim().length < 6) {
      return 'password must be atleast 6 digit';
    }
   
  }
}
