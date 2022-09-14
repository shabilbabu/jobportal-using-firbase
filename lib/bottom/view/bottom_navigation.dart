import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/blogs/view/blogs_view.dart';
import 'package:job_port/bottom/controller/bottom_controller.dart';
import 'package:job_port/jobs/view/jobs_view.dart';
import 'package:job_port/messages/view/messages_view.dart';
import 'package:job_port/profile/view/profile_view.dart';
import 'package:provider/provider.dart';

class BottomView extends StatelessWidget {
  BottomView({
    Key? key,
  }) : super(key: key);

  double bottomNavBarHeight = 60.h;

  List<TabItem> tabItems = List.of([
    TabItem(
      Icons.work,
      "Jobs",
      HexColor('#34444C'),
      labelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    TabItem(
      Icons.create,
      "Blogs",
      HexColor('#34444C'),
      labelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    TabItem(
      Icons.message,
      "Messages",
      HexColor('#34444C'),
    ),
    TabItem(
      Icons.person_sharp,
      "Profile",
      HexColor('#34444C'),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomController>(builder: (context, controller, child) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: bottomNavBarHeight),
              child: bodyContainer(controller.selectedPos),
            ),
            Align(alignment: Alignment.bottomCenter, child: bottomNav(context))
          ],
        );
      }),
    );
  }

  Widget bodyContainer(index) {
    switch (index) {
      case 0:
        return  const JobView();

      case 1:
        return const Blogs();

      case 2:
        return const Messages();

      case 3:
        return const ProfileView();

      default:
        return  const JobView();
    }
  }

  Widget bottomNav(context) {
    return CircularBottomNavigation(
      tabItems,
      controller: Provider.of<BottomController>(context, listen: false)
          .navigationController,
      selectedPos:
          Provider.of<BottomController>(context, listen: false).selectedPos,
      barHeight: bottomNavBarHeight,
      barBackgroundColor: Colors.white,
      backgroundBoxShadow: const <BoxShadow>[
        BoxShadow(color: Colors.black45, blurRadius: 10.0),
      ],
      animationDuration: const Duration(milliseconds: 300),
      selectedCallback: (index) {
        Provider.of<BottomController>(context, listen: false)
            .indexUpdate(index);
      },
    );
  }
}
