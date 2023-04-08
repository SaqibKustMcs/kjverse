import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/OnlineBibble/selectBook.dart';
import 'package:kjverse/View/widgets/memory_list.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class MemoryList extends StatefulWidget {
   MemoryList({Key? key}) : super(key: key);

  @override
  State<MemoryList> createState() => _MemoryListState();
}

class _MemoryListState extends State<MemoryList> {
   bool visible = false;

   List list = [true, false];

   double rating = 5;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),

      body: SafeArea(
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
                    Text("Memory List", style: GoogleFonts.poppins(fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            list[0] = true;
                            list[1] = false;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          padding:
                          EdgeInsets.symmetric(horizontal: 15),
                          decoration:list[0]==false? BoxDecoration(
                              color: Color(0xff898787),
                              borderRadius:
                              BorderRadius.circular(20)):BoxDecoration(
                              gradient:  LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,

                                  colors: [ Color(0xffFF2600),Color(0xffFFB301),]


                              ),
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
                                "Prior Verses\n of the day "
                                    ,
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              list[0]==false?Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              ):Icon(Icons.check_circle_outline,color: Colors.yellow,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            list[0] = false;
                            list[1] = true;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 160,
                          padding:
                          EdgeInsets.symmetric(horizontal: 15),
                          decoration: list[1] == false
                              ? BoxDecoration(
                              color: Color(0xff898787),
                              borderRadius:
                              BorderRadius.circular(20))
                              : BoxDecoration(
                              gradient:  LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,

                                  colors: [ Color(0xffFF2600),Color(0xffFFB301),]


                              ),
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
                                "Favourite Verses",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              list[1]==false?Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              ):Icon(Icons.check_circle_outline,color: Colors.yellow,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
             Visibility(
                visible: list[0]==true,
               child: Column(
                 children: [
                   MemoryListItem(percent: 0.45,title: "Proverbs 3:1-2",subTitle: "Last practiced: 01/02/22"),


                 ],
               ),
             ),
              Visibility(
                visible: list[1]==true,
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Color(0xff000000).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child:Icon(Icons.favorite_border,color: Colors.grey.shade500,size: 40,),
                    ),

                    SizedBox(height: 10.h,),
                    Text("No verses yet", style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800, fontSize: 14,
                        color: Colors.white
                    ),
                    ),
                    SizedBox(height: 80,),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: GestureDetector(
                        onTap:(){
                           _showDialog(context);
                          // _showDialog(context);
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectBook()));


                        },
                        child: Container(height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text("Add",style: GoogleFonts.poppins(
                                color: Colors.yellow,
                                fontWeight: FontWeight.w600,
                                fontSize: 16

                            ),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )

            ],
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
             height: 500,
             width: MediaQuery.of(context).size.width * 0.9,
             child:
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [

                 SizedBox(
                   height: 30,
                 ),
                 Flexible(
                     child: Text(
                       "Get a better experience with Premium",
                       textAlign: TextAlign.center,
                       style: GoogleFonts.poppins(
                           color: Colors.white,
                           fontWeight: FontWeight.w700,
                           fontSize: 20),
                     )),
                 SizedBox(
                   height: 10,
                 ),
                 SmoothStarRating(
                     allowHalfRating: false,
                     onRatingChanged: (v) {
                       rating = v;
                       setState(() {});
                     },
                     starCount: 3,
                     rating: rating,
                     size: 40.0,
                     filledIconData: Icons.star,
                     halfFilledIconData: Icons.star_border,
                     color: Colors.yellowAccent,
                     borderColor: Colors.yellowAccent,
                     spacing: 0.0),
                 SizedBox(
                   height: 10,
                 ),
                 Text(
                   "Worth every penny",
                   style: GoogleFonts.poppins(
                       color: Colors.white,
                       fontWeight: FontWeight.w800,
                       fontSize: 15),
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       height: 15,
                       width: 30,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.yellowAccent),
                     ),
                     SizedBox(
                       width: 5,
                     ),
                     Container(
                       height: 15,
                       width: 15,
                       decoration: BoxDecoration(
                           shape: BoxShape.circle, color: Colors.black),
                     ),
                     SizedBox(
                       width: 5,
                     ),
                     Container(
                       height: 15,
                       width: 15,
                       decoration: BoxDecoration(
                           shape: BoxShape.circle, color: Colors.black),
                     ),
                   ],
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: InkWell(
                     onTap: () {
                       setState(() {
                         list[0] = true;
                         list[1] = false;
                       });
                     },
                     child: Container(
                       height: 40.h,
                       width: MediaQuery.of(context).size.width,
                       padding: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                       decoration: list[0] == false
                           ? BoxDecoration(
                           color: Color(0xff898787),
                           borderRadius: BorderRadius.circular(10))
                           : BoxDecoration(
                           color: Color(0xff898787),
                           borderRadius: BorderRadius.circular(10),
                           border:
                           Border.all(width: 2, color: Colors.yellow)),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Expanded(
                             child: Container(
                               child: Center(
                                 child: Text(
                                   " \$4.99 - 1 Year plan (about \$10/day  ",
                                   style: GoogleFonts.poppins(
                                       color: Colors.white,
                                       fontSize: 14,
                                       fontWeight: FontWeight.w600),
                                 ),
                               ),
                             ),
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
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: InkWell(
                     onTap: () {
                       setState(() {
                         list[0] = false;
                         list[1] = true;
                       });
                     },
                     child: Container(
                       height: 40,
                       width: 290,
                       padding: EdgeInsets.symmetric(horizontal: 5),
                       decoration: list[1] == false
                           ? BoxDecoration(
                           color: Color(0xff898787),
                           borderRadius: BorderRadius.circular(10))
                           : BoxDecoration(
                           color: Color(0xff898787),
                           borderRadius: BorderRadius.circular(10),
                           border:
                           Border.all(width: 2, color: Colors.yellow)),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(
                             "\$35.99  - Monthly Plan ",
                             style: GoogleFonts.poppins(
                                 color: Colors.white,
                                 fontSize: 14,
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
                 SizedBox(
                   height: 20,
                 ),
                 GestureDetector(
                   onTap: () {
                     Navigator.pop(context);
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectBook()));
                   },
                   child: Container(
                     height: 50,
                     width: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.circular(20)),
                     child: Center(
                       child: Text(
                         "Continue",
                         style: GoogleFonts.poppins(
                             color: Colors.yellow,
                             fontWeight: FontWeight.w600,
                             fontSize: 16),
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         );
       },
     );
   }

}
