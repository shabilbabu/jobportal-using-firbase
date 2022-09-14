import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


//--------------------- Carasoul container using job view page ----------------------//
class CarasoulContainer extends StatelessWidget {
  const CarasoulContainer({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 6.w,
        vertical: 6.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}