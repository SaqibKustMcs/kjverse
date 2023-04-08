import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Streak extends StatelessWidget {
  const Streak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
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
                ),
                Text(
                  "Current Streak",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white),
                ),
                Text("               "),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 100.h,
              width: 329.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.25)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: ImageIcon(
                          AssetImage("assets/images/fire1.png"),
                          size: 10.sp,
                          color: Colors.yellowAccent,
                        )),
                    Text(
                      "1",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 46.h,
                  width: 62.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.25)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            child: ImageIcon(
                              AssetImage("assets/images/fire1.png"),
                              size: 10.sp,
                              color: Colors.yellowAccent,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 46.h,
                  width: 257.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.25)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Longest streak",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        Text(
                          "0",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Come back again tomorrow to learn a new verse and protect your streak.",
               textAlign: TextAlign.center, style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ),
            Container(
              height: 50.h,
              width: 243.w,
              decoration: BoxDecoration(
                color: Color(0xff1EA91E
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(
                  "New verse in 15:54:29",
                  textAlign: TextAlign.center, style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
