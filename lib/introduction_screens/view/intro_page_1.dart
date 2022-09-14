import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/introduction_screens/intro%20custom%20widgets/intro_custom_widgets.dart';

class IntroPageOne extends StatelessWidget {
  const IntroPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children:  [
              ContainerDecoration(color: HexColor("#E3E3E3")),
              const BuildImage(path: 'assets/1st.png'),
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(40),
          ),
          const TitleText(text: 'Make new role ...'),
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
