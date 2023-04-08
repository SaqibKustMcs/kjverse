import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/Controller/appController.dart';
import 'package:kjverse/View/AuthScreens/nativeLanguage.dart';
import 'package:kjverse/View/AuthScreens/signUp.dart';
import 'package:kjverse/View/AuthScreens/style.dart';

class dedicateScreen extends StatefulWidget {
  const dedicateScreen({Key? key}) : super(key: key);

  @override
  State<dedicateScreen> createState() => _dedicateScreenState();
}

class _dedicateScreenState extends State<dedicateScreen> {
  bool visible = true;
  List list = [true,false,false,false,false,];
  final _appController=Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 5,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(color: Colors.yellow),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    "How much time are you willing to dedicate to improving your Bible Memorization?",
                    textAlign: TextAlign.center,
                    style:

                    
                    GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: Colors.white),
                  ),
                )
              ],
            ),
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
                            _appController.bibleMemorization="1 minute a day".obs;

                            setState(() {
                              list[0] = true;
                              list[1] = false;
                              list[2] = false;
                              list[3] = false;
                              list[4] = false;

                            });
                          },
                          child: Container(
                            height: 40.h,
                            width: 160.w,
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
                                Text(
                                  "1 minute a day",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
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
                            _appController.bibleMemorization="5 minute a day".obs;

                            setState(() {
                              list[0] = false;
                              list[1] = true;
                              list[2] = false;
                              list[3] = false;
                              list[4] = false;

                            });
                          },
                          child: Container(
                            height: 40.h,
                            width: 160.w,
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
                                Text(
                                  "5 minutes a day",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
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

                  ],)
                  , Row(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            _appController.bibleMemorization="10 minute a day".obs;

                            setState(() {
                              list[0] = false;
                              list[1] = false;
                              list[2] = true;
                              list[3] = false;
                              list[4] = false;

                            });
                          },
                          child: Container(
                            height: 40.h,
                            width: 160.w,
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
                                Text(
                                  "10 minutes a day",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
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

                  ],),
                  Row(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            _appController.bibleMemorization="30 minute a day".obs;

                            setState(() {
                              list[0] = false;
                              list[1] = false;
                              list[2] = false;
                              list[3] = true;
                              list[4] = false;

                            });
                          },
                          child: Container(
                            height: 40.h,
                            width: 160.w,
                            padding:
                            EdgeInsets.symmetric(horizontal: 15),
                            decoration: list[3] == false
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
                                Text(
                                  "30 minutes a day",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                list[3] == false
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
                            _appController.bibleMemorization="5 minutes a week".obs;
                            print( _appController.bibleMemorization);

                            setState(() {
                              list[0] = false;
                              list[1] = false;
                              list[2] = false;
                              list[3] = false;
                              list[4] = true;

                            });
                          },
                          child: Container(
                            height: 40.h,
                            width: 160.w,
                            padding:
                            EdgeInsets.symmetric(horizontal: 15.r),
                            decoration: list[4] == false
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
                                Text(
                                  "5 minutes a week",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                list[4] == false
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


                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                    },
                    child: Container
                      (
                      height: 50.h,
                      width: 152.w,
                      decoration: BoxDecoration(
                          color: Color(0xff111111),
                          borderRadius: BorderRadius.circular(20)

                      ),
                      child: Center(
                        child: Text("Get Started",style: TextStyle(color:Colors.yellow,fontSize: 18.sp),)
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
