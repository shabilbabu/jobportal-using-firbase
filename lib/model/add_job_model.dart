import 'package:cloud_firestore/cloud_firestore.dart';

List<AddJobModel> usersFromMap(List list) =>
    List<AddJobModel>.from(list.map((item) => AddJobModel.fromJson(item)));

class AddJobModel {
  String? companyname;
  String? jobposition;
  String? location;
  String? numberofemployees;
  String? websitelink;
  String? recruitername;
  String? description;
  String? experience;
  String? qualification;
  String? jobType;
  String? img;

  AddJobModel(
      {this.companyname,
      this.jobposition,
      this.location,
      this.numberofemployees,
      this.websitelink,
      this.recruitername,
      this.description,
      this.experience,
      this.qualification,
      this.jobType,
      this.img
      });

  // AddJobModel.fromResponse(DocumentSnapshot<Object?> response) {
  //   companyname = response.get('companyname');
  //   jobposition = response.get('jobposition');
  //   location = response.get('location');
  //   numberofemployees = response.get('numberofemployees');
  //   websitelink = response.get('websitelink');
  //   recruitername = response.get('recruitername');
  //   description = response.get('description');
  //   experience = response.get('experience');
  //   qualification = response.get('qualification');
  //   jobType = response.get('jobType');
  //   img = response.get('img');
  // }

  Map<String, dynamic> toMap() {
    return {
      'companyname': companyname,
      'jobposition': jobposition,
      'location': location,
      'numberofemployees': numberofemployees,
      'websitelink': websitelink,
      'recruitername': recruitername,
      'description': description,
      'experience': experience,
      'qualification': qualification,
      'jobType': jobType,
      'img': img,
    };
  }

  factory AddJobModel.fromJson(Map<String, dynamic> json) => AddJobModel(
        companyname: json['companyname'],
        jobposition: json['jobposition'],
        location: json['location'],
        numberofemployees: json['numberofemployees'],
        websitelink: json['websitelink'],
        recruitername: json['recruitername'],
        description: json['description'],
        experience: json['experience'],
        qualification: json['qualification'],
        jobType: json['jobType'],
        img: json['img']
      );
}
