import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/Sign%20pages/sign_in/controller/sign_in_controller.dart';
import 'package:job_port/Sign%20pages/sign_up/view/singn_up_view.dart';
import 'package:job_port/bottom/view/bottom_navigation.dart';
import 'package:job_port/custom%20widget/container%20button/container_button.dart';
import 'package:provider/provider.dart';
import '../../../custom widget/custom text form field/textformfield.dart';
import '../../../custom widget/subtitle widgets/subtitle_widget.dart';
import '../../Hello title widget/hello_title_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                height: ScreenUtil().setHeight(60),
                child: Center(
                  child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomView())),
                      child: HelloTitle()),
                ),
              ),
              const SubTitleText(subtitle: 'Sign in your Account'),
              SizedBox(
                height: ScreenUtil().setHeight(250),
                width: ScreenUtil().setWidth(350),
                child: const Image(image: AssetImage('assets/signin.png')),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Form(
                  key: context.read<SignInController>().formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: Provider.of<SignInController>(context,
                                listen: false)
                            .emailCntroller,
                        validator: (value) => context
                            .read<SignInController>()
                            .emailValidate(value),
                        hintText: 'email',
                        prefixIcon: Icons.email,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextFormField(
                        controller: Provider.of<SignInController>(context,
                                listen: false)
                            .passwordCntroller,
                        validator: (value) => context
                            .read<SignInController>()
                            .passwordValidate(value),
                        hintText: 'password',
                        prefixIcon: Icons.lock,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                ),
                child: GestureDetector(
                  onTap: () {
                    print('tapped......');
                    // context.read<SignInController>().toSignInFunction(context);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomView()));
                  },
                  child: Consumer<SignInController>(
                    builder: (context, value, child) {
                      return value.isLoading
                          ? const Center(
                              child: SizedBox(
                                  height: 25,
                                  child: CircularProgressIndicator()))
                          : ContainerButton(
                              text: 'Sign In', height: 60.h, fontSize: 15);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: ScreenUtil().setHeight(3),
                    width: ScreenUtil().setWidth(50),
                    decoration: BoxDecoration(
                      color: HexColor('#34444C'),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(10),
                  ),
                  Text(
                    'Sign in with Google',
                    style: GoogleFonts.inknutAntiqua(
                      fontSize: ScreenUtil().setSp(15),
                      color: HexColor('#A89D9D'),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(10),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(3),
                    width: ScreenUtil().setWidth(50),
                    decoration: BoxDecoration(
                      color: HexColor('#34444C'),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(5),
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
                height: ScreenUtil().setHeight(10),
              ),
              RichText(
                text: TextSpan(
                  text: "Don't have an account ?  ",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: HexColor(
                      '#A89D9D',
                    ),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign up',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => navigateTo(
                              context,
                              const SignUpView(),
                            ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  navigateTo(context, screen) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
