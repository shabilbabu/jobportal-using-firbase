import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../intro custom widgets/intro_custom_widgets.dart';

class IntroPageThree extends StatelessWidget {
  const IntroPageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children:  [
              ContainerDecoration(color: HexColor("#E3E3E3")),
              const BuildImage(path: 'assets/3rd.png',),
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(40),
          ),
          const  TitleText(text: 'Just Start ...'),
          SizedBox(
            height: ScreenUtil().setHeight(20),
          ),
          const BodyText(text: 
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
          ),
        ],
      ),
    );
  }
}
