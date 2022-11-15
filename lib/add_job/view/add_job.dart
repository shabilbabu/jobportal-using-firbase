import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/add_job/controller/add_job_provider.dart';
import 'package:job_port/bottom/view/bottom_navigation.dart';
import 'package:job_port/custom%20widget/container%20button/container_button.dart';
import 'package:job_port/custom%20widget/custom%20text%20form%20field/textformfield.dart';
import 'package:job_port/custom%20widget/title%20widget%20on%20textformfield/title_on_textform.dart';
import 'package:provider/provider.dart';

class AddJob extends StatelessWidget {
  const AddJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => BottomView()));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Add Job',
          style: GoogleFonts.inknutAntiqua(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: 
      context.watch<AddJobProvider>().isLoading == true ?  Center(child: CircularProgressIndicator(
        backgroundColor: HexColor(
          '#34444C',
        ),
        color: Colors.pink,
        strokeWidth: 5,
      ),) : 
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Form(
            key: context.watch<AddJobProvider>().addjobFormkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 300.h,
                    width: 300.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/addjobs222.png',
                        ),
                      ),
                    ),
                  ),
                ),
                TitleWIdgetontextfield(title: 'Company Name'),
                SizedBox(
                  height: 5.h,
                ),
                 CustomTextFormFieldWithoutIcon(
                  controller: context.watch<AddJobProvider>().companyNameController,
                  validator: (value) {
                    
                    if(value!.isEmpty){
                      return 'Field is required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15.h,
                ),
                TitleWIdgetontextfield(title: 'Job Position'),
                SizedBox(
                  height: 5.h,
                ),
                 CustomTextFormFieldWithoutIcon(
                  controller: context.watch<AddJobProvider>().jobPositionController,
                  validator: (value) {
                    
                    if(value!.isEmpty){
                      return 'Field is required';
                    }
                    return null;
                  },
                 ),
                SizedBox(
                  height: 15.h,
                ),
                TitleWIdgetontextfield(title: 'Location'),
                SizedBox(
                  height: 5.h,
                ),
                 CustomTextFormFieldWithoutIcon(
                  controller: context.watch<AddJobProvider>().locationController,
                  validator: (value) {
                    
                    if(value!.isEmpty){
                      return 'Field is required';
                    }
                    return null;
                  },
                 ),
                 SizedBox(
                  height: 15.h,
                ),
                TitleWIdgetontextfield(title: 'Job Type'),
                SizedBox(
                  height: 5.h,
                ),
                 CustomTextFormFieldWithoutIcon(
                  controller: context.watch<AddJobProvider>().jobtypeController,
                  validator: (value) {
                    
                    if(value!.isEmpty){
                      return 'Field is required';
                    }
                    return null;
                  },
                 ),
                SizedBox(
                  height: 15.h,
                ),
                TitleWIdgetontextfield(title: 'Number of Employees'),
                SizedBox(
                  height: 5.h,
                ),
                 CustomTextFormFieldWithoutIcon(
                  controller: context.watch<AddJobProvider>().numberOfEmployeesController,
                  validator: (value) {
                    
                    if(value!.isEmpty){
                      return 'Field is required';
                    }
                    return null;
                  },
                 ),
                SizedBox(
                  height: 15.h,
                ),
                TitleWIdgetontextfield(title: 'Website Link'),
                SizedBox(
                  height: 5.h,
                ),
                 CustomTextFormFieldWithoutIcon(
                  controller: context.watch<AddJobProvider>().websiteLinkController,
                  validator: (value) {
                    
                    if(value!.isEmpty){
                      return 'Field is required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15.h,
                ),
                TitleWIdgetontextfield(title: 'Recruiter Name'),
                SizedBox(
                  height: 5.h,
                ),
                 CustomTextFormFieldWithoutIcon(
                  controller:  context.watch<AddJobProvider>().recruiternameController,
                  validator: (value) {
                    
                    if(value!.isEmpty){
                      return 'Field is required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15.h,
                ),
                TitleWIdgetontextfield(title: 'Year of Experience'),
                SizedBox(
                  height: 5.h,
                ),
                 CustomTextFormFieldWithoutIcon(
                  controller:  context.watch<AddJobProvider>().experienceController,
                  validator: (value) {
                    
                    if(value!.isEmpty){
                      return 'Field is required';
                    }
                    return null;
                  },
                ),
                 SizedBox(
                  height: 15.h,
                ),
                TitleWIdgetontextfield(title: 'Qualification'),
                SizedBox(
                  height: 5.h,
                ),
                 CustomTextFormFieldWithoutIcon(
                  controller:  context.watch<AddJobProvider>().qualificationController,
                  validator: (value) {
                    
                    if(value!.isEmpty){
                      return 'Field is required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15.h,
                ),
                TitleWIdgetontextfield(title: 'Description'),
                SizedBox(
                  height: 5.h,
                ),
                TextFormField(
                  controller: context.watch<AddJobProvider>().descriptionController,
                  validator: (value) {
                    
                    if(value!.isEmpty){
                      return 'Field is required';
                    }
                    return null;
                  },
                  maxLines: 12,
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
                ),
                 const SizedBox(height: 15,),
                 TitleWIdgetontextfield(title: 'Add Company logo'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                  onTap: () {
                    context.read<AddJobProvider>().imagePicking();
                  },
                  child:  Consumer<AddJobProvider>(
                    builder: (context, value, child) {
                      return value.image == null ?  Container(height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/company_image-removebg-preview.png'))
                    ),
                    ) : Container(height: 150,
                    width: 150,
                    decoration:  BoxDecoration(
                      image: DecorationImage(image: FileImage(File(value.image!.path)))
                    ),
                    );
                    },
                    
                  ),
                ),
                const Icon(Icons.arrow_left_rounded,size: 30,),
                const Text('tap here',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)
                  ],
                ),
                
                
                SizedBox(
                  height: 30.h,
                ),
                //Consumer<AddJobProvider>(
                 // builder: (context, value, child) {
                  //  return value.imageUrl == null ? Container(height: 50,width: 50,color: Colors.amber,) : 
                    GestureDetector(
                      onTap: () {
                        context.read<AddJobProvider>().validation(context);
                        context.read<AddJobProvider>().companyNameController.clear();
                        context.read<AddJobProvider>().descriptionController.clear();
                        context.read<AddJobProvider>().jobPositionController.clear();
                        context.read<AddJobProvider>().locationController.clear();
                        context.read<AddJobProvider>().jobtypeController.clear();
                        context.read<AddJobProvider>().numberOfEmployeesController.clear();
                        context.read<AddJobProvider>().websiteLinkController.clear();
                        context.read<AddJobProvider>().recruiternameController.clear();
                        context.read<AddJobProvider>().experienceController.clear();
                        context.read<AddJobProvider>().qualificationController.clear();                                        
                      },
                      child: ContainerButton(text: 'Submit'))
                //  }
              //  ),
              
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
