import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

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
                  "Favourite",
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
            Column(
              children: [

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
                Text("No Favourite verses yet", style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w800, fontSize: 14,
                    color: Colors.white
                ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
