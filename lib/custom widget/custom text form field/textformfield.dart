import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

//---------------------- This is custom textformfield -----------------------------//
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      this.color,
      this.hintText,
      this.prefixIcon,
      this.keyboardType,
      this.maxlines,
      this.validator,
      this.controller,
      this.obscuretext = false,
      this.formKey,
      this.sufixicon})
      : super(
          key: key,
        );

  final IconData? prefixIcon;
  final Color? color;
  final String? hintText;
  final dynamic keyboardType;
  final int? maxlines;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final bool obscuretext;
  final Widget? sufixicon;
  final Key? formKey;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: formKey,
      controller: controller,
      validator: validator,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16.sp,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.white,
        ),
        suffixIcon: sufixicon,
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.white,
        ),
        fillColor: HexColor(
          '#34444C',
        ),
        filled: true,
      ),
      obscureText: obscuretext,
    );
  }
}

class CustomTextFormFieldWithoutIcon extends StatelessWidget {
  const CustomTextFormFieldWithoutIcon({Key? key,this.controller,this.validator,this.keyboardType}) : super(key: key);

  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final dynamic keyboardType;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
       style: TextStyle(
        color: Colors.white,
        fontSize: 16.sp,
      ),
      decoration: InputDecoration(
        fillColor: HexColor(
          '#34444C',
        ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
