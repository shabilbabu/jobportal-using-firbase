// // child: Form(key:formKey ,
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                       children: [
// //                         SizedBox(height: 50,),
// //                         CustomTextFormField(controller:emailCntroller ,
// //                         validator: (value) {
// //                               return value ==RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
// //                                   ? null
// //                                   : "Please provide a valid email address";
// //                             },
// //                           hintText: 'email',
// //                           prefixIcon: Icons.mail,
// //                         ), SizedBox(
// //                 height: ScreenUtil().setHeight(60),
// //               ),
// //                          SizedBox(  height: ScreenUtil().setHeight(60),
// //                            child: CustomTextFormField(
// //                              controller: passwordCntroller,
// //                              validator: (value) {
// //                                      return value!.length == 6
// //                                 ? null
// //                                 : "Please enter the password correctly";
// //                                    },
// //                              hintText: 'password',
// //                              prefixIcon: Icons.lock,
// //                            ),
// //                          ), SizedBox(
// //                 height: ScreenUtil().setHeight(20),
// //               ),
              
// //                       ],
// //                     ),
// //                   ),




//  child: GestureDetector(
//                   onTap: (){
//                     if (formKey.currentState!.validate()) {
//                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>BottomView()));
//                     }
//                   },
//                   child: ContainerButton(text: 'Sign In',height: 60.h,fontSize: 15),
//                 ),