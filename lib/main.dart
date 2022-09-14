import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_port/Sign%20pages/sign_in/controller/sign_in_controller.dart';
import 'package:job_port/Sign%20pages/sign_up/controller/sign_up_controller.dart';
import 'package:job_port/add%20profile/controller/add_profile_controller.dart';
import 'package:job_port/bottom/controller/bottom_controller.dart';
import 'package:job_port/bottom/view/bottom_navigation.dart';
import 'package:job_port/introduction_screens/controller/indroduction_controller.dart';
import 'package:job_port/jobs/controller/jobs_controller.dart';
import 'package:provider/provider.dart';

import 'add_job/controller/add_job_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => IntroductionController(),
            ),
            ChangeNotifierProvider(
              create: (context) => BottomController(),
            ),
            ChangeNotifierProvider(
              create: (context) => AddProfileController(),
            ),
            ChangeNotifierProvider(
              create: (context) => SignInController(),
            ),
            ChangeNotifierProvider(
              create: (context) => SignUpController(),
            ),
            ChangeNotifierProvider(
              create: (context) => AddJobProvider(),
            ),
             ChangeNotifierProvider(
              create: (context) => JobViewProvider(),
            ),
          ],
          child:   MaterialApp(
            debugShowCheckedModeBanner: false,
            home: BottomView(),
          ),
        );
      },
      designSize: const Size(411.42857142857144, 843.4285714285714),
    );
  }
}
