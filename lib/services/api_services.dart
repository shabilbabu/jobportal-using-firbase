import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:job_port/model/add_job_model.dart';

class Firebase{

  //******************* this function is using for add job into firebase ****************/
    void  addJobAdd(AddJobModel addjobmodel) async {
    final userPost =  FirebaseFirestore.instance.collection('users').doc();
    await userPost.set(addjobmodel.toMap());
  }



//************************* This function is user get added job from in firebase *********************/
    Future<dynamic> getJobs() async {
    try {
      final userte =  FirebaseFirestore.instance.collection('users');
      //final res = await userte.get();
      QuerySnapshot snapshot =await userte.get();
       final allData = snapshot.docs.map((doc) => doc.data()).toList();
      
      final users= usersFromMap(allData);
      log('************************ ${allData.length.toString()}');
      return users;
    // return"EMPTY";
    } on FirebaseException {
      return 'firebase error';
    } on SocketException {
      return 'Connection Refused !';
    }
  }


  //********************* This function used for add image into firebase ********************/

   UploadTask? uploadFile(String location, File file){
    try{
      log('allo');
      final ref = FirebaseStorage.instance.ref(location);
      return ref.putFile(file);
    } on FirebaseException catch (e) {
      return null;
    }
   }
}