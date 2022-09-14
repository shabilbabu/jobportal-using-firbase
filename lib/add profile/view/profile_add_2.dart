// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:job_port/add_job/controller/1stpage_addjob_controller.dart';
// import 'package:job_port/add_job/view/2ndpage.dart';
// import 'package:job_port/bottom/view/bottom_navigation.dart';
// import 'package:provider/provider.dart';
// import '../../custom widget/container1 and container2/container1_and_2.dart';
// import '../../custom widget/custom text form field/textformfield.dart';
// import '../../custom widget/title widget on textformfield/title_on_textform.dart';

// class AddProfile2 extends StatelessWidget {
//   const AddProfile2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () => Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => BottomView(),
//             ),
//           ),
//           icon: Icon(
//             Icons.arrow_back_ios_new,
//             size: 20.sp,
//             color: Colors.black,
//           ),
//         ),
        
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: 20.w,
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
              
//            //   Form(
//               //  key: context.read<FirstPageAddJobController>().formKey,
//                  SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       TitleWIdgetontextfield(title: 'Job Position'),
//                       CustomTextFormField(
//                         controller: context
//                             .watch<FirstPageAddJobController>()
//                             .jobPositionController,
//                        // validator: (value) => context.read<FirstPageAddJobController>().emptyValidate1stPage(value!)
//                       ),
//                       SizedBox(
//                   height: 15.h,
//                               ),
//                               TitleWIdgetontextfield(title: 'Company Name'),
//                               CustomTextFormField(
//                   controller:
//                       Provider.of<FirstPageAddJobController>(context, listen: false)
//                           .companyNameController,
//                         //  validator: (value) => context.read<FirstPageAddJobController>().emptyValidate1stPage(value!)
//                               ),
//                               SizedBox(
//                   height: 15.h,
//                               ),
//                               TitleWIdgetontextfield(title: 'Location'),
//                               CustomTextFormField(
//                   controller:
//                       Provider.of<FirstPageAddJobController>(context, listen: false)
//                           .locationCOntroller,
//                           // validator: (value) => context.read<FirstPageAddJobController>().emptyValidate1stPage(value!)
//                               ),
//                               SizedBox(
//                   height: 30.h,
//                               ),
//                     ],
//                   ),
//                 ),
//             //  ),
//               Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container1(text: 'Part - Time'),
//                     Container2(text: 'Fresher'),
//                   ],
//                 ),
//                 SizedBox(height: 25.h,),
//                Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     color: Colors.white,
//                   ),
//                   IconButton(onPressed: () {
//                 //  if (Provider.of<FirstPageAddJobController>(context, listen: false)
//                 //       .formKey
//                 //       .currentState!
//                 //       .validate()) {
//                     Navigator.of(context).pushReplacement(
//                         MaterialPageRoute(builder: (context) => const Second()));
//                  // }
//                },icon:const Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 20,) ,),
//                 ],
//                )
              
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
