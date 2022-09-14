
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DropDownWidget extends StatefulWidget {
//   DropDownWidget({Key? key}) : super(key: key);

//   @override
//   State<DropDownWidget> createState() => _DropDownWidgetState();
// }

// class _DropDownWidgetState extends State<DropDownWidget> {
//   final items = [
//     'item1',
//     'item2',
//     'item2',
//     'item3',
//     'item4',
//     'item5',
//   ];

//   String? value;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Center(
//         child: Container(
//           width: 300,
//           padding: EdgeInsets.symmetric(horizontal: 12.w,),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             border: Border.all(color: Colors.black,),
//           ),
//           child: DropdownButtonHideUnderline(
//             child: DropdownButton<String>(
//               value: value,
//               iconSize: 36,
//               icon: const Icon(Icons.arrow_drop_down,color: Colors.black,),
//               isExpanded: true,
//               items: items.map(buildMenuItem).toList(),
//               onChanged: (value) => setState(() =>
//                 this.value = value
//               ),
//             ),
//           ),
//         ),
//       ),
//     ));
//   }

//   DropdownMenuItem<String> buildMenuItem(
//     String item,
//   ) =>
//       DropdownMenuItem(
//         value: item,
//         child: Text(
//           item,
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//       );
// }
