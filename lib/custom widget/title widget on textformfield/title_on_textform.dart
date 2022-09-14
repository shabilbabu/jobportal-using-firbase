import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



//---------- this title widget using on textform field -----------------------------------//
class TitleWIdgetontextfield extends StatelessWidget {
  TitleWIdgetontextfield({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.oswald(
        fontSize: 15,
      ),
    );
  }
}