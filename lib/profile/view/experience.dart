import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bottom/view/bottom_navigation.dart';
import 'custom_widgets.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

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
              const TextWidget(text: 'Compnay Name', maintitle: 'Brototype'),
              SizedBox(height: 20.h,),
              const TextWidget(text: 'Position', maintitle: 'Flutter Developer'),
              SizedBox(height: 20.h,),
              const TextWidget(text: 'Start Date', maintitle: '02 - 08 - 2019'),
              SizedBox(height: 20.h,),
              const TextWidget(text: 'End Date', maintitle: '26 - 03 - 2022'),
            ],
          ),
        ),
      ),
      ),
    );
  }
}