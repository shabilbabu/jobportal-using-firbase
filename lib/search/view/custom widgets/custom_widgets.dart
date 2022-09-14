import 'package:flutter/material.dart';

class CustomWidgetsSearch extends StatelessWidget {
   CustomWidgetsSearch({Key? key,required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.white,
        hintText: text,
        hintStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,),
        filled: true,
      ),
    );
  }
}