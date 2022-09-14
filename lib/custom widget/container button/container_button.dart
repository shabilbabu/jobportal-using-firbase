import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ContainerButton extends StatelessWidget {
  ContainerButton({
    Key? key,
    required this.text,
    this.height,
    this.width,
    this.fontSize,
  }) : super(key: key);

  String text;
  double? height;
  double? width;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        
        border: Border.all(color:HexColor('#34444C'),width: 3 ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.inknutAntiqua(
            fontSize: fontSize,
            color: HexColor('#34444C'),
          ),
        ),
      ),
    );
  }
}
