import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  const Description({Key? key,required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 10.h,
          width: 10.w,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        Text(
          title,
          style: GoogleFonts.oswald(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class IconAndText extends StatelessWidget {
  const IconAndText({Key? key,required this.icon,required this.text}) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 30.sp,
        ),
        SizedBox(
          width: 20.w,
        ),
        Text(
          text,
          style: GoogleFonts.oswald(
            fontSize: 15.sp,
          ),
        ),
      ],
    );
  }
}