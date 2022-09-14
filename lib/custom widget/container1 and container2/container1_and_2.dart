import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';



//------------------- container 2 using options like part time or full time---------------------------//
class Container2 extends StatelessWidget {
  Container2({
    Key? key,
    required this.text,
  }) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 150.w,
      decoration: BoxDecoration(
        color: HexColor('#B9B3B3'),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.oswald(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

//------------------- container 1 using options like part time or full time---------------------------//
class Container1 extends StatelessWidget {
  Container1({
    Key? key,
    required this.text,
  }) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 150.w,
      decoration: BoxDecoration(
        color: HexColor('#34444C'),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.oswald(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}