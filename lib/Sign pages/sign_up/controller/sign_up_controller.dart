import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:job_port/Sign%20pages/sign_up/model/signup_model.dart';
import 'package:job_port/services/api_services.dart';

import '../../sign_in/view/sign_in_view.dart';

class SignUpController with ChangeNotifier {

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool loading = false;

  bool isShow = false;


  togglePasswordVisibility(){
    isShow =! isShow;
    notifyListeners();
  }

//-------- This is username validation --------//
   userNameValidate(String value) {
    if (value.trim().isEmpty) {
      return 'username is required';
    } else if (value.trim().length < 3) {
      return 'username must be atleast 4 digit';
    }
    
  }


//-------- This function is email validation in sign up -----------------//
   emailValidate(String value) {
    if (value.trim().isEmpty) {
      return 'email is required';
    } else if (
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
      
    }
   
  }

  //-------- This function is password validation in sign up -----------------//
passwordValidate(String value) {
    if (value.trim().isEmpty) {
      return 'Password is required';
    } else if (value.trim().length < 6) {
      return 'password must be atleast 6 digit';
    }
    
  }



//--------------- This is confirm password validator ---------------//
   confirmPasswordValidate(){
    if(confirmPasswordController.text.trim().isEmpty){
      return 'Field is required';
    }else if(confirmPasswordController.text.trim() != passwordController.text.trim()){
      return 'enter valid password';
    }
    
  }

//---------- This function is called in signup button in sign up view ----------//
  // toSignUpFunction(BuildContext context) {
  //   if (formKey.currentState!.validate()) {
  //     loading = true;
  //     notifyListeners();
      
  //     ApiServices()
  //         .signUpFunction(SignupModel(
  //       userName: userNameController.text.trim(),
  //       email: emailController.text.trim(),
  //       password: passwordController.text.trim(),
  //     ))
  //         .then((value) {
  //           if(value is Response){
  //             ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('Account create successfully')));
  //           } else if(value == 'email Already Exist'){
  //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('email Already Exist')));
  //           }else if(value == 'username Already Exist'){
  //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('username Already Exist')));
  //           }else if(value == 'error'){
  //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Something went wrong ! please try again later')));
  //           }
        
  //       loading = false;
  //       notifyListeners();
  //     });
  //   } else {

  //   }
  // }
}
