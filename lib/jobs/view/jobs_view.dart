import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/add_job/view/add_job.dart';
import 'package:job_port/custom%20widget/appbar%20custom%20widgets/appbar_widgets.dart';
import 'package:job_port/jobs/carasoul%20container%20widget/carasoul_container.dart';
import 'package:job_port/jobs/controller/jobs_controller.dart';
import 'package:job_port/read_job/view/read_job_view.dart';
import 'package:job_port/search/view/search_view.dart';
import 'package:provider/provider.dart';

class JobView extends StatelessWidget {
  const JobView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<JobViewProvider>().jobFeched(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const AppBarWidgets(
            navigatePage1: SearchView(),
            titles: 'Seek Jobs',
            icon2: Icons.add,
            navigatePage2: AddJob()),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
              // navigateTo(context, const AddProfile1());
            },
            child: CarouselSlider(
              items: const [
                //1nd Image of Slider
                CarasoulContainer(img: 'assets/5thhiring.png'),
                //2rd Image of Slider
                CarasoulContainer(img: 'assets/hiring 3rd.jpg'),
                //3th Image of Slider
                CarasoulContainer(img: 'assets/hiring 4th.jpg')
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 180.h,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 2 / 1,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 500),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 20.h,
            ),
            child: SizedBox(
              height: 450.h,
              child: Consumer<JobViewProvider>(
                builder: (context, provider, _) {
                  final users = provider.users;
                  log('list in ${users.length}');
                  return ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.black,
                      height: 20.h,
                    ),
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: GestureDetector(
                          onTap: () => navigateTo(context,  ReadJobView(user: users[index],)),
                          child: Container(
                            height: 120.h,
                            width: 400.w,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  users[index].jobposition!,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.inconsolata(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 25.h,
                                      width: 100.w,
                                      decoration: BoxDecoration(
                                          color: HexColor('#34444C'),
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Center(
                                        child: Text(
                                          '${users[index].experience!} - y exp',
                                          style: GoogleFonts.inconsolata(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 25.h,
                                      width: 200.w,
                                      decoration: BoxDecoration(
                                          color: HexColor('#34444C'),
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Center(
                                        child: Text(
                                          '  ${users[index].qualification!}',
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.inconsolata(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/imgbin-professional-computer-icons-avatar-job-avatar-0hfFf9P1VgAL1RC0tr4BtykCz-removebg-preview.png'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      users[index].recruitername!,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.inconsolata(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 80.w,
                                    ),
                                    Container(
                                      height: 30.h,
                                      width: 30.h,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/locationicon-removebg-preview.png'),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        users[index].location!,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inconsolata(
                                            fontSize: 15.h,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
              ),
            ),
          ),
        ],
      ),
    );
  }

  navigateTo(ctx, screen) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => screen));
  }
}
