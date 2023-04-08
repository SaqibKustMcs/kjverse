import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectionD extends StatelessWidget {
  String collectionName;

  CollectionD({Key? key, required this.collectionName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff424242),
        body: Column(
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
                child: ImageIcon(AssetImage("assets/images/backicon.png")),


              ),
            ),
            SizedBox(width: 100.w,),
            Text("$collectionName", style: GoogleFonts.poppins(fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white),),
          ],
        ),
      ),
              SizedBox(height: 150.h,),

              Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [

              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Color(0xff000000).withOpacity(0.25),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: ImageIcon(AssetImage("assets/images/Vector3.png",),
                  color: Color(0xff575757),),
              ),
              SizedBox(height: 10.h,),
              Text("NO VERSES ADDED", style: GoogleFonts.poppins(
                fontWeight: FontWeight.w800, fontSize: 14,
                color: Colors.white
              ),
              )
            ],
          )

        ],
      ),
  ])));
  }
}
