import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/bottom/view/bottom_navigation.dart';
import 'package:job_port/profile/view/contacts.dart';
import 'package:job_port/profile/view/custom_widgets.dart';
import 'package:job_port/profile/view/education_qualification.dart';
import 'package:job_port/profile/view/experience.dart';
import 'package:job_port/profile/view/user_details.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Container(
                    height: 300.h,
                    width: MediaQuery.of(context).size.width.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            HexColor(
                              '#34444C',
                            ),
                            Colors.white
                          ],
                        )),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 140.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(200),
                                  color: Colors.white),
                            ),
                            Container(
                              height: 130.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(200),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('assets/Zayn-Malik.webp'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Zayn Malik',
                          style: GoogleFonts.oswald(
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        const Text(
                          'Flutter Developer',
                          style: TextStyle(fontSize: 20),
                        ),
                        const Text(
                          'Brototype',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                 GestureDetector(
                  onTap: () {
                    navigateTo(context, const UserDetails());
                  },
                   child: const TitleWidget(
                      title: 'User Details',
                      path: 'assets/userdetailslogonew.png'),
                 ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {
                    navigateTo(context, const EducationQualification());
                  },
                  child: const TitleWidget(
                      title: 'Education and Qualification',
                      path: 'assets/educationpnglogo-removebg-preview (1).png'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {
                    navigateTo(context, const Experience());
                  },
                  child: const TitleWidget(
                      title: 'Experience',
                      path: 'assets/award-experience-icon-11.png'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {
                    navigateTo(context, const Contacts());
                  },
                  child: const TitleWidget(
                      title: 'Contacts',
                      path: 'assets/contacticon-removebg-preview (1).png'),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  navigateTo(context, screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
