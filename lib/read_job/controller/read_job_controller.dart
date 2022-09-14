import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/add_job_model.dart';
import '../../services/api_services.dart';

class ReadJobProvider with ChangeNotifier{
   List<AddJobModel> users = [];
  
  laodUsers(BuildContext context) {
    Firebase().getJobs().then((data) {
      if (data is List<AddJobModel>) {
        log('isList');
        users = data;
        notifyListeners();
      } else if (data is String) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(data)));
      }
    });
  }
}