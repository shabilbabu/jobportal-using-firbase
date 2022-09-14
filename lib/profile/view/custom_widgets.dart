import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key, required this.title,required this.path}) : super(key: key);

  final String title;
  final String path;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.transparent
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
                  height: 35.h,
                  width: 35.w,
                  decoration:  BoxDecoration(
                    image: DecorationImage(image: AssetImage(path))
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,style: GoogleFonts.oswald(
                      color: Colors.grey,
                      fontSize: 20
                    ),),
                    Icon(Icons.arrow_right,size: 40,color: Colors.grey,)
                  ],
                )
        ],
      ),

    );
  }

  
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key,required this.text,required this.maintitle}) : super(key: key);

  final String text;
  final String maintitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: GoogleFonts.oswald(
          fontSize: 18,
          color: Colors.grey
        ),),
        Text(maintitle,style: GoogleFonts.oswald(
          fontSize: 25,
          color: Colors.black,
        ),)
      ],
    );
  }
}
