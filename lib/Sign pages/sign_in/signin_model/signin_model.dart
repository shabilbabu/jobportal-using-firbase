class SignInModel{

  String clientId;
  String clientSecret;
  String grandType;
  String email = '';
  String password = '';

  SignInModel({
    required this.clientId,
    required this.clientSecret,
    required this.grandType,
    required this.email,
    required this.password
  });

  Map<String, dynamic> tojson() => {
    
 "client_id" : clientId,
 "client_secret" : clientSecret,
 "grant_type" :  grandType,
 "username" : email,
 "password" : password

  };
}