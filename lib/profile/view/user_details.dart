import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_port/bottom/view/bottom_navigation.dart';
import 'package:job_port/profile/view/custom_widgets.dart';
import 'package:job_port/profile/view/profile_view.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

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
          'User Details',
          style: GoogleFonts.inknutAntiqua(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              const TextWidget(
                text: 'Full Name',
                maintitle: 'Zayn Malik',
              ),
              SizedBox(
                height: 20.h,
              ),
              const TextWidget(
                text: 'DOB',
                maintitle: '28 - 02 - 2000',
              ),
              SizedBox(
                height: 20.h,
              ),
              const TextWidget(
                text: 'CV',
                maintitle: '',
              ),
              SizedBox(
                height: 20.h,
              ),
              const TextWidget(
                text: 'About me',
                maintitle:
                    '''There are many variations of passages of Lorem Ipsum available, but the 
        majority have suffered alteration in some form, by injected humour, 
        or randomised words which don't look even slightly believable.''',
              ),
              
            ],
          ),
        ),
      ),
    ));
  }
}
