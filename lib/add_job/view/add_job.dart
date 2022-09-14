import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_port/add_job/controller/add_job_provider.dart';
import 'package:job_port/bottom/view/bottom_navigation.dart';
import 'package:job_port/custom%20widget/container%20button/container_button.dart';
import 'package:job_port/custom%20widget/container1%20and%20container2/container1_and_2.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
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
               ),
              SizedBox(
                height: 30.h,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container1(text: 'Part - Time'),
              //     Container2(text: 'Full - Time'),
              //   ],
              // ),
              SizedBox(
                height: 15.h,
              ),
              TitleWIdgetontextfield(title: 'Number of Employees'),
              SizedBox(
                height: 5.h,
              ),
               CustomTextFormFieldWithoutIcon(
                controller: context.watch<AddJobProvider>().numberOfEmployeesController,
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
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {
                  context.read<AddJobProvider>().toPostAddJob(context);
                },
                child: ContainerButton(text: 'Submit')),
              SizedBox(height: 30.h,),
            ],
          ),
        ),
      ),
    ));
  }
}
