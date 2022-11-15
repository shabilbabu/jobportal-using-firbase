import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/model/add_job_model.dart';
import 'package:job_port/read_job/read%20job%20custom%20widget/read_job_custom.dart';

class ReadJobView extends StatelessWidget {
  const ReadJobView({
    Key? key,
    required this.user
  }) : super(key: key);
  final AddJobModel user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
            iconSize: 20.sp,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                  child: Text(
                    user.jobposition!,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inknutAntiqua(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/Computools_company_logo-removebg-preview.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 100.h,
                      width: 3.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.h,
                            child: Text(
                              user.companyname!,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.inknutAntiqua(
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                          Text(
                            user.location!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                 IconAndText(icon: Icons.timer, text: user.jobType!),
                SizedBox(
                  height: 10.h,
                ),
                 IconAndText(
                    icon: Icons.people, text: '${user.numberofemployees!} + employees'),
                SizedBox(
                  height: 10.h,
                ),
                 IconAndText(
                  icon: Icons.web,
                  text: user.websitelink!,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Meet the hiring team',
                  style: GoogleFonts.oswald(
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 200.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: HexColor('#34444C'),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 8.h,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 60.h,
                              width: 60.w,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/imgbin-professional-computer-icons-avatar-job-avatar-0hfFf9P1VgAL1RC0tr4BtykCz-removebg-preview.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  user.recruitername!,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                  ),
                                ),
                                Text(
                                  'We are hiring ${user.jobposition} for join in \nour teame.',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Container(
                                  height: 2.h,
                                  width: 250.w,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'If you are interested Contact us',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Container(
                                  height: 20.h,
                                  width: 20.w,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/triangle-bottom-arrow-icon (1).png'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  height: 30.h,
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Message',
                                      style: GoogleFonts.oswald(
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Job Description',
                  style: GoogleFonts.oswald(
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                 Description(
                    title: user.description!),
                // const Description(
                //     title: 'There are many variations of passages'),
                // const Description(
                //     title: 'There are many variations of passages'),
                // const Description(
                //     title: 'There are many variations of passages'),
                // const Description(
                //     title: 'There are many variations of passages'),
                // const Description(
                //     title: 'There are many variations of passages'),
                // const Description(
                //     title: 'There are many variations of passages'),
                // const Description(
                //     title: 'There are many variations of passages'),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
