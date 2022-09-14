import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/Sign%20pages/sign_in/view/sign_in_view.dart';
import 'package:job_port/custom%20widget/container%20button/container_button.dart';
import 'package:job_port/introduction_screens/view/intro_page_1.dart';
import 'package:job_port/introduction_screens/view/intro_page_2.dart';
import 'package:job_port/introduction_screens/view/intro_page_3.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controller/indroduction_controller.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: ((index) {
              Provider.of<IntroductionController>(context, listen: false)
                  .boolianUpdate(index);
            }),
            controller: Provider.of<IntroductionController>(context).controller,
            children: const [
              IntroPageOne(),
              IntroPageTwo(),
              IntroPageThree(),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  effect: ExpandingDotsEffect(
                    spacing: 10,
                    radius: 5,
                    dotWidth: 20,
                    dotHeight: 12,
                    dotColor: HexColor("#E3E3E3"),
                    activeDotColor: HexColor('#34444C'),
                  ),
                  controller: Provider.of<IntroductionController>(context,
                          listen: false)
                      .controller,
                  count: 3,
                ),
                Provider.of<IntroductionController>(context).onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => SignInView()),(route) => false,);
                        },
                        child: ContainerButton(text: 'Get Started',height: 40.h,width: 120.w,fontSize: 12),
                      )
                    : GestureDetector(
                        onTap: () {
                          Provider.of<IntroductionController>(context,
                                  listen: false)
                              .controller
                              .nextPage(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                curve: Curves.easeIn,
                              );
                        },
                        child: Container(
                          height: ScreenUtil().setHeight(30),
                          width: ScreenUtil().setWidth(120),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
