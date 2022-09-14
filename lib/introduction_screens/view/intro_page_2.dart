import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../intro custom widgets/intro_custom_widgets.dart';

class IntroPageTwo extends StatelessWidget {
  const IntroPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              const ContainerDecoration(color: Colors.transparent),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
                child: Image.asset(
                  'assets/2nd.png',
                  width: ScreenUtil().setWidth(350),
                ),
              ),
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(40),
          ),
          
              const TitleText(text: 'Location ...'),
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
