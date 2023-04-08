import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/AuthScreens/LoginScreen.dart';
import 'package:kjverse/View/AuthScreens/forgetVerfication.dart';

import '../widgets/customTextFormField.dart';
class ForgetPassword extends StatelessWidget {
   ForgetPassword({Key? key}) : super(key: key);
   final _formKey = GlobalKey<FormState>();
   TextEditingController _emailC=TextEditingController();


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:  Color(0xff898787).withOpacity(0.30),
                            ),
                            child: ImageIcon(AssetImage("assets/images/backicon.png")),


                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Text("Forgot password",style: GoogleFonts.poppins(fontSize: 25.sp,fontWeight: FontWeight.w600,color: Colors.white),)
                    ,SizedBox(height: 10.h,),
                    Flexible(child: Text("Enter the email associated with your account to receive reset instructions",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Color(0xffD9D9D9)),)),
                    SizedBox(height: 100.h,),
                    CustomTextFields(
                      controller: _emailC,
                      validator:  (String? value) {
                        if (value!.isEmpty) {
                          return 'Email is Required';
                        }

                        if (!RegExp(
                            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                            .hasMatch(value)) {
                          return 'Please enter a valid email Address';
                        }

                        return null;
                      },
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email_rounded),
                    ),
                    SizedBox(height: 270.h,),
                    SizedBox(height: 20.h,),
                    GestureDetector(
                      onTap:(){
                        if (_formKey.currentState!.validate()) {
                          forgotPassword(context, email: '${_emailC.text}');
                          return;

                        }


                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetVarification()));

                      },
                      child: Container(height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20).r
                        ),
                        child: Center(
                          child: Text("Rest password",style: GoogleFonts.poppins(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp

                          ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an Account? ",style: TextStyle(
                            color: Color(0xffD9D9D9)
                        ),),

                        InkWell(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                          },
                          child: Text("Sign In"
                            ,style: TextStyle(
                                color: Colors.yellow
                            ),),
                        ),
                      ],
                    )


                  ],),
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _showDialog(context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          titleTextStyle: GoogleFonts.poppins(),
          backgroundColor: Color(0xff424242),

          content: Container(
            height: 150,
            width: MediaQuery.of(context).size.width*0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Oops",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
                SizedBox(height: 10,),
                Text("Incorrect email and password combinations. Please use the fogot password below to reset your password",textAlign: TextAlign.center, style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 12),),
                SizedBox(height: 10,),
                Container(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                SizedBox(height: 10,),
                Text("Seen",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),


              ],
            ),
          ),

        );
      },

    );
  }
   Future forgotPassword(BuildContext context, {required String email}) async {
     try {

       await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
       print ("code sent");
     } on FirebaseAuthException catch (e) {


       return null;
     }
   }
}
