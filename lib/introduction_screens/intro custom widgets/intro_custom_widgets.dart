import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


 //--------------- body text decoration in intro page ------------------//
class BodyText extends StatelessWidget {
  const BodyText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: Text(
        text,
        style: GoogleFonts.courgette(
          fontSize: ScreenUtil().setSp(22),
          color: HexColor(
            '#A89D9D',
          ),
        ),
      ),
    );
  }
}


//------------- Title Text decoration in intro page --------------//
class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: Text(
        text,
        style: GoogleFonts.lobster(
          fontSize: ScreenUtil().setSp(40),
        ),
      ),
    );
  }
}


 //-------------- Container Decoration in intro page ----------------//
class ContainerDecoration extends StatelessWidget {
  const ContainerDecoration({
    Key? key,
    this.color,
  }) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) => Container(
        height: ScreenUtil().setHeight(400),
        width: ScreenUtil().setWidth(220),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(100),
          ),
        ),
      );
}

//------------- Image Decoration in inro page ---------------//
class BuildImage extends StatelessWidget {
  const BuildImage({
    Key? key,
    required this.path,
  }) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) => Center(
          child: Padding(
        padding: EdgeInsets.only(top: ScreenUtil().setHeight(35)),
        child: Image.asset(path, width: ScreenUtil().setWidth(350)),
      ));
}
