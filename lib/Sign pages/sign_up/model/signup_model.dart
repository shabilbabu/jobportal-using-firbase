
class SignupModel{
   String userName ='';
   String email = '';
   String password = '';

  SignupModel({
    required this.userName,
    required this.email,
    required this.password
  });

  Map<String,dynamic> tojson()=>{
      "email": email,
    "username": userName,
    "password": password
  };
}