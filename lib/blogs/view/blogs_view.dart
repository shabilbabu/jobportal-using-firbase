import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/add_blog/view/add_blog_view.dart';
import 'package:job_port/blog%20search/view/blog_search_view.dart';
import 'package:job_port/custom%20widget/appbar%20custom%20widgets/appbar_widgets.dart';
import 'package:job_port/read_blog/view/read_blog_view.dart';


class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const AppBarWidgets(navigatePage1: BlogSearchView(), titles: 'Blogs', icon2: Icons.add, navigatePage2:  AddBlogView()),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.w,
            vertical: 8.h,
          ),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/imgbin-professional-computer-icons-avatar-job-avatar-0hfFf9P1VgAL1RC0tr4BtykCz-removebg-preview.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 155.h,
                      width: 310.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor('#34444C'),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(
                          left: 15.w,
                          top: 10.h,
                          right: 10.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flutter Null Safty',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: GoogleFonts.oswald(
                                fontSize: 20.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Container(
                              height: 1.h,
                              width: 280.w,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 SizedBox(
                                  height: 10.h,
                                  width: 10.w,
                                ),
                                GestureDetector(
                                  onTap: () => navigateTo(context, const ReadBlogView()),
                                  child: Container(
                                    height: 20.h,
                                    width: 60.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child:  Center(
                                      child: Text(
                                        'Tap here',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
  navigateTo(context,screen){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
