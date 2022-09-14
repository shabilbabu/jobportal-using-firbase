import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';



//------------------- title text using sign hello -----------------------------//
class HelloTitle extends StatelessWidget {
  HelloTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello',
      style: GoogleFonts.lobster(
        fontSize: ScreenUtil().setSp(50),
        color: HexColor(
          '#34444C',
        ),
      ),
    );
  }
}