import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/Controller/appController.dart';
import 'package:kjverse/View/AuthScreens/nativeLanguage.dart';

class HearUs extends StatefulWidget {
  const HearUs({Key? key}) : super(key: key);

  @override
  State<HearUs> createState() => _HearUsState();
}

class _HearUsState extends State<HearUs> {
  bool visible = true;
  List list = [true,false,false,false,false,false,false,false];
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
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(color: Colors.yellow),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "How did you hear about us?",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              _appController.aboutUs="facebook".obs;


                              setState(() {
                                list[0] = true;
                                list[1] = false;
                                list[2] = false;
                                list[3] = false;
                                list[4] = false;
                                list[5] = false;
                                list[6] = false;
                                list[7] = false;
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
                                  Text(
                                    "Facebook",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
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
                    ],
                  ),

                  Row(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            _appController.aboutUs="Instagram".obs;

                            setState(() {
                              list[0] = false;
                              list[1] = false;
                              list[2] = true;
                              list[3] = false;
                              list[4] = false;
                              list[5] = false;
                              list[6] = false;
                              list[7] = false;
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
                                Text(
                                  "Instagram",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
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
                            _appController.aboutUs="Found on the App store".obs;

                            setState(() {
                              list[0] = false;
                              list[1] = false;
                              list[2] = false;
                              list[3] = true;
                              list[4] = false;
                              list[5] = false;
                              list[6] = false;
                              list[7] = false;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 160,
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
                                  "Found on the App store",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
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
                            setState(() {
                              _appController.aboutUs="Saw in a game".obs;

                              list[0] = false;
                              list[1] = false;
                              list[2] = false;
                              list[3] = false;
                              list[4] = true;
                              list[5] = false;
                              list[6] = false;
                              list[7] = false;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 160,
                            padding:
                            EdgeInsets.symmetric(horizontal: 15),
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
                                  "Saw in a game",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
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

                  ],)
                  ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              _appController.aboutUs="Twitter".obs;

                              setState(() {
                                list[0] = false;
                                list[1] = false;
                                list[2] = false;
                                list[3] = false;
                                list[4] = false;
                                list[5] = false;
                                list[6] = true;
                                list[7] = false;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 160,
                              padding:
                              EdgeInsets.symmetric(horizontal: 15),
                              decoration: list[6] == false
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
                                    "Twitter",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  list[6] == false
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

                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {

                              _appController.aboutUs="Other".obs;
                              print(_appController.aboutUs);

                              setState(() {
                                list[0] = false;
                                list[1] = false;
                                list[2] = false;
                                list[3] = false;
                                list[4] = false;
                                list[5] = false;
                                list[6] = false;
                                list[7] = true;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 160,
                              padding:
                              EdgeInsets.symmetric(horizontal: 15),
                              decoration: list[7] == false
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
                                    "Other",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  list[7] == false
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
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NativeLanguage()));
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
                        child: Icon(Icons.navigate_next,color: Colors.yellow,size: 30,)
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
