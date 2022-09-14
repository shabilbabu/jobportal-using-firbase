import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/bottom/view/bottom_navigation.dart';
import 'package:job_port/comment_blog/view/comment_view.dart';

class ReadBlogView extends StatelessWidget {
  const ReadBlogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => {
              navigateTo(context, BottomView()),
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20.sp,
            ),
          ),
          title: Text(
            'Zayn Malik',
            style: GoogleFonts.inknutAntiqua(
              fontSize: 18.sp,
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 120.h,
                    left: 10.w,
                    right: 10.w,
                    bottom: 10.h,
                  ),
                  child: Container(
                    height: 540.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: HexColor('#34444C'),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 90.h,
                          ),
                          Text(
                            'Flutter Null Safty',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontSize: 30.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            height: 3.h,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.pink,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Expanded(
                            child: ListView(
                              children: [
                                Text(
                                  '''"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat."''',
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(200)),
                ),
                Container(
                  height: 195.h,
                  width: 190.w,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/Zayn-Malik.webp'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: GestureDetector(
                onTap: () => navigateTo(context, const CommentView()),
                child: Container(
                  height: 45.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: HexColor('#34444C'),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add Comment',
                        style: GoogleFonts.inknutAntiqua(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      const Icon(
                        Icons.comment,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  navigateTo(context, screen) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
