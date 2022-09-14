import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_port/profile/view/custom_widgets.dart';

import '../../bottom/view/bottom_navigation.dart';

class EducationQualification extends StatelessWidget {
  const EducationQualification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BottomView(),
              ),
            );
          }),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Education and Qualification',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: GoogleFonts.inknutAntiqua(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              const TextWidget(text: 'University', maintitle: 'Calicut'),
              SizedBox(height: 20.h,),
              const TextWidget(text: 'Qulification', maintitle: 'Graduate'),
              SizedBox(height: 20.h,),
              const TextWidget(text: 'Department', maintitle: 'BSC Computer Science'),
              SizedBox(height: 20.h,),
              const TextWidget(text: 'Start Date', maintitle: '20 - 05 - 2018'),
              SizedBox(height: 20.h,),
              const TextWidget(text: 'End Date', maintitle: '26 - 03 - 2021'),
              SizedBox(height: 20.h,),
              const TextWidget(text: 'Skills', maintitle: '''There are many variations of passages of Lorem Ipsum available, but the 
      majority have suffered alteration in some form, by injected humour, 
      or randomised words which don't look even slightly believable.'''),
             SizedBox(height: 20.h,),
              const TextWidget(text: 'Project', maintitle: 'Nil'),
            ],
          ),
        ),
      ),
      ));
  }
}