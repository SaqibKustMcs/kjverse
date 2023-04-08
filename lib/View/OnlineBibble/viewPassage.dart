import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/OnlineBibble/BibleSelectChapter.dart';
import 'package:kjverse/View/widgets/memory_list.dart';
import 'package:percent_indicator/percent_indicator.dart';
class ViewPassage extends StatelessWidget {
  const ViewPassage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),

      body: SafeArea(
        child: Column(
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
                      child: ImageIcon(AssetImage("assets/images/backicon.png")),


                    ),
                  ),

                  Text("Proverbs 3 : 1-2", style: GoogleFonts.poppins(fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.question_mark,color: Colors.white,),
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 20,),












                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 30),
                  child: Container(                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),

                    decoration: BoxDecoration(

                        color: Color(0xff000000).withOpacity(0.25),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text("My son, do not forget my teaching, but let your heart keep my commandments, for length of the days and years of life and peace they will add to you",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                          ),),
                        )
                    ]
                    ),
                  ),
                ),
                SizedBox(height:250.h,),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BibleSelectChapter()));


                    },
                    child: Container(height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("Complete",style: GoogleFonts.poppins(
                            color: Colors.yellow,
                            fontWeight: FontWeight.w600,
                            fontSize: 16

                        ),),
                      ),
                    ),
                  ),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
