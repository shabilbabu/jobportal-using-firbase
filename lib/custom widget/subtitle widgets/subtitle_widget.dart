import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';



//--------------------- Subtitle widgets using in under main title widgets ---------------------//
class SubTitleText extends StatelessWidget {
  const SubTitleText({
    Key? key,
    required this.subtitle,
  }) : super(key: key);

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: GoogleFonts.lobster(
        fontSize: ScreenUtil().setSp(20),
        color: HexColor(
          '#A89D9D',
        ),
      ),
    );
  }
}