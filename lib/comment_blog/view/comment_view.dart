import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_port/read_blog/view/read_blog_view.dart';

class CommentView extends StatelessWidget {
  const CommentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ReadBlogView(),
                ),
              ),
              icon:  Icon(
                Icons.arrow_back_ios_new,
                size: 20.sp,
                color: Colors.black,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
               Padding(
                padding: EdgeInsets.only(
                  left: 25.w,
                  right: 25.w,
                  bottom: 10.h,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Add Comment',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: Icon(
                      Icons.comment,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send,
                ),
              ),
            ],
          )),
    );
  }
}
