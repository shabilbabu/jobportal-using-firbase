import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProfileCustomWidgets {
  Widget addImage({required String path}) {
    return Center(
      child: Container(
        height: 300.h,
        width: 300.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(path),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
