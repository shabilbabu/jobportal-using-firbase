import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_port/bottom/view/bottom_navigation.dart';
import 'package:job_port/model/add_job_model.dart';

import '../../services/api_services.dart';

class AddJobProvider with ChangeNotifier{

  TextEditingController companyNameController = TextEditingController();
  TextEditingController jobPositionController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController numberOfEmployeesController = TextEditingController();
  TextEditingController websiteLinkController = TextEditingController();
  TextEditingController recruiternameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController experienceController = TextEditingController();
  TextEditingController qualificationController = TextEditingController();
  TextEditingController jobtypeController = TextEditingController();

  toPostAddJob(BuildContext context) {
    final userData = AddJobModel(
     companyname: companyNameController.text.trim(),
     jobposition: jobPositionController.text.trim(),
     location: locationController.text.trim(),
     numberofemployees: numberOfEmployeesController.text.trim(),
     websitelink: websiteLinkController.text.trim(),
     recruitername: recruiternameController.text.trim(),
     description: descriptionController.text.trim(),
     experience: experienceController.text.trim(),
     qualification: qualificationController.text.trim(),
     jobType: jobtypeController.text.trim()
    );
    Firebase().addJobAdd(userData).then((value) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomView()));
   

    });
  }
}