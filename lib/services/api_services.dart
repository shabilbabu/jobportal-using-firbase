import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:job_port/model/add_job_model.dart';

class Firebase{
     addJobAdd(AddJobModel addjobmodel) async {
    final userPost =  FirebaseFirestore.instance.collection('users').doc();
    await userPost.set(addjobmodel.toMap());
    
  }

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
}