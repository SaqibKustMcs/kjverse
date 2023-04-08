import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/AuthScreens/LoginScreen.dart';
import 'package:kjverse/View/AuthScreens/nativeLanguage.dart';

import '../BottomNavBar/customNavBar.dart';

class VerificationMethod extends StatefulWidget {
  const VerificationMethod({Key? key}) : super(key: key);

  @override
  State<VerificationMethod> createState() => _VerificationMethodState();
}

class _VerificationMethodState extends State<VerificationMethod> {
  bool visible = true;
  List list = [true,false,false,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),
      body: SafeArea(
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  Color(0xff898787).withOpacity(0.30),
                      ),
                      child: ImageIcon(AssetImage("assets/images/backicon.png"),color: Colors.yellow,),


                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text("Verification Method",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white),)
            ,SizedBox(height: 30,),
            Flexible(child: Text("Select all verification methods you want to protect your account with.",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [


                  Row(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              list[0] = true;
                              list[1] = false;
                              list[2] = false;

                            });
                          },
                          child: Container(
                            height: 40,
                            width: 160,
                            padding:
                            EdgeInsets.symmetric(horizontal: 15),
                            decoration: list[0] == false
                                ? BoxDecoration(
                                color: Color(0xff898787),
                                borderRadius:
                                BorderRadius.circular(20))
                                : BoxDecoration(
                                color: Color(0xff898787),
                                borderRadius:
                                BorderRadius.circular(20),
                                border: Border.all(
                                    width: 2,
                                    color: Colors.yellow)),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.password_rounded,color: Colors.white,),
                                    SizedBox(width: 10,),
                                    Text(
                                      "Password",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                list[0] == false
                                    ? Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                )
                                    : Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.yellow,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],),
                  Row(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              list[0] = false;
                              list[1] = true;
                              list[2] = false;

                            });
                          },
                          child: Container(
                            height: 40,
                            width: 160,
                            padding:
                            EdgeInsets.symmetric(horizontal: 15),
                            decoration: list[1] == false
                                ? BoxDecoration(
                                color: Color(0xff898787),
                                borderRadius:
                                BorderRadius.circular(20))
                                : BoxDecoration(
                                color: Color(0xff898787),
                                borderRadius:
                                BorderRadius.circular(20),
                                border: Border.all(
                                    width: 2,
                                    color: Colors.yellow)),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.account_box_outlined,color: Colors.white,),
                                    SizedBox(width: 10,),
                                    Text(
                                      "Face ID",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                list[1] == false
                                    ? Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                )
                                    : Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.yellow,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],),
                  Row(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              list[0] = false;
                              list[1] = false;
                              list[2] = true;

                            });
                          },
                          child: Container(
                            height: 40,
                            width: 160,
                            padding:
                            EdgeInsets.symmetric(horizontal: 15),
                            decoration: list[2] == false
                                ? BoxDecoration(
                                color: Color(0xff898787),
                                borderRadius:
                                BorderRadius.circular(20))
                                : BoxDecoration(
                                color: Color(0xff898787),
                                borderRadius:
                                BorderRadius.circular(20),
                                border: Border.all(
                                    width: 2,
                                    color: Colors.yellow)),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.fingerprint,color: Colors.white,),
                                    SizedBox(width: 10,),
                                    Text(
                                      "Finger Print",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                list[2] == false
                                    ? Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                )
                                    : Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.yellow,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],)


                ],
              ),
            ),
            SizedBox(height:
              50,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap:(){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: Container
                      (
                      height: 50,
                      width: 102,
                      decoration: BoxDecoration(
                          color: Color(0xff111111),
                          borderRadius: BorderRadius.circular(20)

                      ),
                      child: Center(
                        child: Icon(Icons.navigate_next_outlined,color: Colors.yellow,size: 30,)
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 1,)
          ],
        ),
      ),
    );
  }
}
