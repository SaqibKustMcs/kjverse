import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/OnlineBibble/bibleSelectverses.dart';
import 'package:kjverse/View/OnlineBibble/selectBook.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../OnlineBibble/bibleDetail1.dart';
class MemoryListItem extends StatelessWidget {
  String title;
  String subTitle;
  double percent;
  MemoryListItem({Key? key,required this.title,required this.percent,required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>BibleDetail1()));

      },
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1,color: Colors.grey)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("${title}",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),)
             ,   Text("${subTitle}",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.grey),)

              ],),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  height: 50,
              width: 50,
                  child: CircularPercentIndicator(
                    radius: 20.0,
                    lineWidth: 5.0,
                    percent: percent,
                    center: new Text("${percent}",style: TextStyle(color: Colors.white),),
                    linearGradient:  LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,

                        colors: [ Color(0xffFF2600),Color(0xffFFB301),]


                    ),                ),
                  ),



              ],),
            ],
          ),
        ),
      ),
    );
  }
}
