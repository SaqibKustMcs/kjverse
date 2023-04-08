import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/OnlineBibble/bibleDetail1.dart';
import 'package:kjverse/View/OnlineBibble/selectBook.dart';
import 'package:kjverse/View/OnlineBibble/viewPassage.dart';
import 'package:kjverse/View/Today/Favourite.dart';
import 'package:kjverse/View/Today/memoryList.dart';
import 'package:kjverse/View/Today/streak.dart';
import 'package:kjverse/View/Today/todayScreen.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import 'reading.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double rating = 5;
  bool visible = false;
  List list = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_rounded,
                    color: Colors.white,
                  ),
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Favourite()));
                          },

                          child: Container(
                            height: 35,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                color: Color(0xff898787).withOpacity(0.30)),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.favorite, color: Colors.redAccent),
                                Text(
                                  "1",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Streak()));
                          },
                          child: Container(
                            height: 35,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                color: Color(0xff898787).withOpacity(0.30)),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 28,
                                    width: 30,
                                    child: ImageIcon(
                                      AssetImage("assets/images/fire1.png"),
                                      color: Colors.yellow,
                                    )),
                                Text(
                                  "1",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Text(
              "FEB 2023",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                    itemCount: 15,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (_, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 130.h,
                            width: 101.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff000000).withOpacity(0.25)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10,),
                                Center(
                                    child: index < 4
                                        ? InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>BibleDetail1()));
                                              // _showDialog(context);
                                            },
                                            child: Container(
                                              height: 70.h,
                                              width: 70.w,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff000000),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: Colors.yellowAccent)),
                                              child: Center(
                                                  child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Verse of the day",
                                                  style: TextStyle(
                                                      color: Colors.yellowAccent,
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 13),
                                                ),
                                              )),
                                            ),
                                          )
                                        : Container(
                                            height: 50.h,
                                            width: 50.w,
                                            decoration: BoxDecoration(
                                              color: Color(0xffFFB301),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(Icons.question_mark),
                                          )),
                                SizedBox(height: 5,),
                                index < 4 ?Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SmoothStarRating(
                                        allowHalfRating: false,
                                        onRatingChanged: (v) {
                                          rating = v;
                                          setState(() {});
                                        },
                                        starCount: 3,
                                        rating: rating,
                                        size: 13.0,
                                        filledIconData: Icons.star,
                                        halfFilledIconData: Icons.star_border,
                                        color: Colors.yellowAccent,
                                        borderColor: Colors.yellowAccent,
                                        spacing: 0.0),
                                  ],
                                ):SizedBox(),
                              ],
                            ),
                          ),
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }

}
