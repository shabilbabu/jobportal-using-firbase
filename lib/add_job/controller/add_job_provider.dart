

import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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

  bool isLoading = false;

  UploadTask? task;

  String? imageUrl;

  File? image;

  void setLoading(bool loading){
    isLoading = loading;
    notifyListeners();
  }

  GlobalKey<FormState> addjobFormkey = GlobalKey<FormState>();


//---------------------- add job post function ------------------------//
  void toPostAddJob(BuildContext context) {
    setLoading(true);
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
     jobType: jobtypeController.text.trim(),
     img: imageUrl
    );
    Firebase().addJobAdd(userData).then((value) {
      setLoading(false);
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomView()));
   
    });
  }


//--------------------- validation function -----------------------//
  validation(BuildContext context){
    if(addjobFormkey.currentState!.validate()){
      toPostAddJob(context);
    } else {
      return ;
    }
    
  }


//---------------- pick image function ---------------------//
  void imagePicking() async {
   final  img = await ImagePicker().pickImage(source: ImageSource.gallery);
   if(img == null){
    return ;
   } else {
    image = File(img.path);
    notifyListeners();
   await uploadFile();
   }
  }

  //----------------- image post function -------------------------//
  Future uploadFile() async{
  
     log('enterd');
    if (image == null){
      return;
    }
    String location = "Compnay Logo";
     
    task = Firebase().uploadFile(location, image!);
    notifyListeners();
    if(task == null){
      return;
    }

    final snapshot = await task!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    imageUrl = urlDownload;
    notifyListeners();
  log(urlDownload);
  }
  


}