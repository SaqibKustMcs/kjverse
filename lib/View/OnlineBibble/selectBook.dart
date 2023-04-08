import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BibleSelectChapter.dart';

class SelectBook extends StatelessWidget {


  SelectBook({Key? key, }) : super(key: key);
  List books=["English","Urdu","Mathematics","Science","Drawing","Physics"];

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
                        
                        Text("Select Book", style: GoogleFonts.poppins(fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),),
                        Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Icon(Icons.search,color: Colors.white,)))
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BibleSelectChapter()));
                          },
                          child: Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.white38)

                                ))
                            ,child: Center(
                            child: Text("${books[index]}",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),
                          ),
                          ),
                        ),
                      );
                },
              ),
                    ),
                  ),
            ])));
  }
}

