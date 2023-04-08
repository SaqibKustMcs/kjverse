import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/OnlineBibble/bibleDetail1.dart';

class BibleSelectVerses extends StatelessWidget {
  BibleSelectVerses({Key? key}) : super(key: key);
  List number =[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff898787).withOpacity(0.30),
                      ),
                      child:
                      ImageIcon(AssetImage("assets/images/backicon.png")),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Proverbs 3 : 1-2",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Text(
                        "SELECT VERSES",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent, shape: BoxShape.circle),
                    child: Icon(
                      Icons.question_mark,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 10),
                        child: Container(
                          height: 54.h,
                          width: 331.w,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Color(0xff575757).withOpacity(0.50),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 2.0,
                                    blurRadius: 3.0)
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "View Verses",
                                    style: GoogleFonts.poppins(
                                        color: Colors.yellow,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                      Expanded(
                        child: Container(

                          child: GridView.builder(
                            itemCount: number.length,
                            padding: EdgeInsets.all(10),
                            gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5),
                            itemBuilder: (_, index) => Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BibleDetail1()));
                                },
                                child: Container(
                                    height: 50.h,
                                    width: 50.w,
                                    decoration:number[index] <4? BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepOrangeAccent,
                                        border: Border.all(
                                            width: 2,
                                            color: Colors.deepOrangeAccent)):
                                    BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2,
                                            color: Colors.deepOrangeAccent)),
                                    child: Center(
                                        child:
                                        Text(
                                          "${number[index]}",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w600),
                                        )
                                    )),
                              ),
                            ),

                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 3,
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Center(
                            child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Container(
                                  height: 50.h,
                                  width :MediaQuery.of(context).size.width*0.9,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      "Complete",
                                      style: GoogleFonts.poppins(
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
