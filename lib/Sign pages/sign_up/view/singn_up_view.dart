import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/Sign%20pages/Hello%20title%20widget/hello_title_widget.dart';
import 'package:job_port/Sign%20pages/sign_in/view/sign_in_view.dart';
import 'package:job_port/Sign%20pages/sign_up/controller/sign_up_controller.dart';
import 'package:job_port/bottom/view/bottom_navigation.dart';
import 'package:job_port/custom%20widget/container%20button/container_button.dart';
import 'package:job_port/custom%20widget/subtitle%20widgets/subtitle_widget.dart';
import 'package:provider/provider.dart';

import '../../../custom widget/custom text form field/textformfield.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signUpProvider = context.read<SignUpController>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
                child: Center(
                  child: HelloTitle(),
                ),
              ),
              const SubTitleText(
                subtitle: 'Sign up your Account',
              ),
              Image(
                image: const AssetImage('assets/signup.png'),
                height: 150.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Form(
                  key: context.read<SignUpController>().formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomTextFormField(
                        controller: Provider.of<SignUpController>(context,
                                listen: false)
                            .userNameController,
                        validator: (value) =>
                            signUpProvider.userNameValidate(value!),
                        prefixIcon: Icons.person,
                        hintText: 'username',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomTextFormField(
                        controller: Provider.of<SignUpController>(context,
                                listen: false)
                            .emailController,
                        validator: (value) => context
                            .read<SignUpController>()
                            .emailValidate(value!),
                        hintText: 'email',
                        prefixIcon: Icons.mail,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomTextFormField(
                        controller: Provider.of<SignUpController>(context,
                                listen: false)
                            .passwordController,
                        validator: (value) => context
                            .read<SignUpController>()
                            .passwordValidate(value!),
                        hintText: 'password',
                        prefixIcon: Icons.lock,
                        sufixicon: IconButton(
                            onPressed: () =>
                                signUpProvider.togglePasswordVisibility(),
                            icon: Icon(
                              context.watch<SignUpController>().isShow
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white,
                            )),
                        obscuretext: context.watch<SignUpController>().isShow,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomTextFormField(
                        hintText: 'confirm password',
                        obscuretext: signUpProvider.isShow,
                        prefixIcon: Icons.lock,
                        controller: context
                            .watch<SignUpController>()
                            .confirmPasswordController,
                        validator: (value) => context
                            .read<SignUpController>()
                            .confirmPasswordValidate(),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Provider.of<SignUpController>(context, listen: false)
                  //     .toSignUpFunction(context);
                  navigateTo(context, BottomView());
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Consumer<SignUpController>(
                    builder: (context, value, child) {
                      return value.loading
                          ? const Center(
                              child: SizedBox(
                                  height: 25,
                                  child: CircularProgressIndicator()))
                          : ContainerButton(
                              text: 'Sign Up', height: 60.h, fontSize: 15);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 3.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: HexColor('#34444C'),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text('Sign up with Google',
                      style: GoogleFonts.inknutAntiqua(
                        color: HexColor('#A89D9D'),
                        fontSize: 15.sp,
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: 3.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: HexColor('#34444C'),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Container(
                  height: 50.h,
                  width: MediaQuery.of(context).size.width.w,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 133, 241),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Image(
                    image: AssetImage(
                        'assets/google_logo_new_png-removebg-preview.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              RichText(
                text: TextSpan(
                  text: "Already have an account  ",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: HexColor(
                      '#A89D9D',
                    ),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign in',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const SignInView()),
                            ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  navigateTo(context, screen) {}
}
