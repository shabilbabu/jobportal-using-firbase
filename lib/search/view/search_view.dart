import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'custom widgets/custom_widgets.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: SizedBox(
            height: 45.h,
            width: 330.w,
            child: TextField(
              style:  TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.sp),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
                fillColor: HexColor('#34444C'),
                filled: true,
                prefixIcon:  Icon(
                  Icons.search,
                  size: 30.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: HexColor('#34444C'),
                        title: Column(
                          children: [
                            CustomWidgetsSearch(text: 'Domain'),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomWidgetsSearch(text: 'Location'),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomWidgetsSearch(text: 'Salary'),
                            SizedBox(
                              height: 25.h,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child: Container(
                                height: 50.h,
                                width: 230.w,
                                decoration: BoxDecoration(
                                  color: Colors.white, 
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    'Submit',
                                    style: GoogleFonts.inknutAntiqua(
                                      fontSize: 18.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              icon: Icon(
                Icons.filter_alt,
                color: HexColor('#34444C'),
                size: 45.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
