import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/OnlineBibble/reciteScreen.dart';
import 'package:kjverse/View/OnlineBibble/viewPassage.dart';
import 'package:kjverse/View/Today/listning.dart';
import 'package:kjverse/View/Today/memoryList.dart';
import 'package:kjverse/View/Today/reading.dart';
import 'package:kjverse/View/widgets/memory_list.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:phlox_animations/phlox_animations.dart';
class BibleDetail1 extends StatelessWidget {
  const BibleDetail1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),

      body: SafeArea(
        // child: PhloxAnimations(
        //   duration: const Duration(milliseconds: 800),
        //   fromY: 200,

          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
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
                          child: ImageIcon(AssetImage("assets/images/backicon.png"),color: Colors.yellow,),


                        ),
                      ),
                      SizedBox(width: 80.w,),
                      Text("Proverbs 3:1-2", style: GoogleFonts.poppins(fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 30,),

                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: .80,
                      center: new Text("80",style: GoogleFonts.poppins(fontSize: 30,color: Colors.white),),
                      linearGradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,

                        colors: [ Color(0xffFF2600),Color(0xffFFB301),]


                    ),
                    ),
                    SizedBox(height: 50,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPassage()));
                          },
                          child: Container(
                            height: 50.h,
                            width: 154.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black54

                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(height: 48.h,width: 50.w,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,

                                        colors: [ Color(0xffFF2600),Color(0xffFFB301),]


                                    ),
                                    shape: BoxShape.circle


                                  ),
                                child: Center(
                                    child: Icon(Icons.menu_book_sharp)
                                ),
                                  ),
                                  Text("Read",style: GoogleFonts.poppins(
                                    color: Colors.white
                                  ),)

                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Listening()));
                          },
                          child: Container(
                            height: 50.h,
                            width: 154.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black54

                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Listen",style: GoogleFonts.poppins(
                                      color: Colors.white
                                  ),),
                                  Container(height: 48.h,width: 50.w,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,

                                            colors: [ Color(0xffFF2600),Color(0xffFFB301),]


                                        ),
                                        shape: BoxShape.circle


                                    ),
                                    child: Center(
                                        child: Icon(Icons.headphones_rounded)
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ReciteScreen()));
                          },
                          child: Container(
                            height: 50.h,
                            width: 154.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black54

                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Recite",style: GoogleFonts.poppins(
                                      color: Colors.white
                                  ),),
                                  Container(height: 48.h,width: 50.w,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,

                                            colors: [ Color(0xffFF2600),Color(0xffFFB301),]


                                        ),
                                        shape: BoxShape.circle


                                    ),
                                    child: Center(
                                        child: Icon(Icons.person_outline)
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50,),


                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Actions",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff000000).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            InkWell(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPassage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("View passage",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                                    Icon(Icons.navigate_next_rounded,color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),

                            Divider(height: 1,color: Colors.grey,),
                            InkWell(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MemoryList()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Verse Library",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                                    Icon(Icons.navigate_next_rounded,color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                            Divider(height: 1,color: Colors.grey,),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Delete",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                                  Icon(Icons.navigate_next_rounded,color: Colors.white,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )


              ],
            ),
          ),
        ),
      //),
    );
  }
}
