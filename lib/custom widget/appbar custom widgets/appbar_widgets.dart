//---------------------- Appbar widget using main pages -------------------------//
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


//--------------- Appbar custom widgets using main pages ------------------------//
class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({
    Key? key,
    required this.navigatePage1,
    required this.titles,
    required this.icon2,
    required this.navigatePage2,
    this.icon1,
  }) : super(key: key);

  final String titles;
  final IconData icon2;
  final IconData? icon1;
  final Widget navigatePage1;
  final Widget navigatePage2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => navigatePage1,
            ),
          ),
          child: Container(
            height: 35.h,
            width: 35.w,
            decoration: BoxDecoration(
              color: HexColor('#34444C'),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Image(
              image: AssetImage('assets/search_icon.png'),
            ),
          ),
        ),
        Text(
          titles,
          style: GoogleFonts.inknutAntiqua(
            fontSize: 25.sp,
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => navigatePage2),),
          child: Container(
            height: 35.h,
            width: 35.w,
            decoration: BoxDecoration(
              color: HexColor('#34444C'),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Icon(
              icon2,
            ),
          ),
        ),
      ],
    );
  }
}