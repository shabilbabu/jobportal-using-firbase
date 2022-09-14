import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bottom/view/bottom_navigation.dart';
import 'custom_widgets.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

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
          'Experience',
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
              const TextWidget(text: 'Contact Number', maintitle: '8139008887'),
              SizedBox(height: 20.h,),
              const TextWidget(text: 'email', maintitle: 'zainmalik111@gmail.com'),
              SizedBox(height: 20.h,),
              
            ],
          ),
        ),
      ),
      ),
    );
  }
}