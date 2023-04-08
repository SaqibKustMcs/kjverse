import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/AuthScreens/LoginScreen.dart';

import '../widgets/customTextFormField.dart';
class ForgetVarification extends StatelessWidget {
  const ForgetVarification({Key? key}) : super(key: key);

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
                  SizedBox(height: 10,),
                  Text("Verification",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white),)
                  ,SizedBox(height: 10,),
                  Flexible(child: Text("Enter the OTP code we just sent to your email  @abc****hij.com",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)),
                  SizedBox(height: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 48,
                        width: 52,
                        decoration: BoxDecoration(
                          color: Color(0xff898787).withOpacity(0.30),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none
                            )
                          )
                        )),
                      ),
                      Container(
                        height: 48,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Color(0xff898787).withOpacity(0.30),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                )
                            )
                        )),
                      ),
                      Container(
                        height: 48,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Color(0xff898787).withOpacity(0.30),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                )
                            )
                        )),
                      ),
                      Container(
                        height: 48,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Color(0xff898787).withOpacity(0.30),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                )
                            )
                        )),
                      ),
                      Container(
                        height: 48,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Color(0xff898787).withOpacity(0.30),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                )
                            )
                        )),
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont receive a code? ",style: TextStyle(
                          color: Colors.white
                      ),),

                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgetVarification()));
                        },
                        child: Text("Resend"
                          ,style: TextStyle(
                              color: Colors.yellow
                          ),),
                      ),
                    ],
                  ),
                  SizedBox(height: 270,),
                  GestureDetector(
                    onTap:(){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false);

                    },
                    child: Container(height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("Verify",style: GoogleFonts.poppins(
                            color: Colors.yellow,
                            fontWeight: FontWeight.w600,
                            fontSize: 16

                        ),),
                      ),
                    ),
                  ),



                ],),
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
}
