import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/OnlineBibble/selectBook.dart';
class OnlineBibble extends StatelessWidget {
  const OnlineBibble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242) ,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        automaticallyImplyLeading: false,

        elevation: 0,
        backgroundColor: Color(0xff424242) ,

        centerTitle: true,
        title: Text("Online Bible"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff000000).withOpacity(0.25),
                  hintText: "Search for a Bible",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>SelectBook()));
              },
              child: Container(
                height: 200.h,
                width:329.w ,
                decoration: BoxDecoration(
                  color: Color(0xff575757),

                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        height:329.h ,
                        width:double.infinity ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10)
                                ,topRight: Radius.circular(10)
                          ),
                            gradient: new LinearGradient(
                                colors: [
                                  Color(0xffD9D9D9).withOpacity(0.80),
                                  Color(0xffFFFFFF),
                                ],
                                stops: [0.3, 1.0,],
                                begin: FractionalOffset.topLeft,
                                end: FractionalOffset.bottomRight,
                                tileMode: TileMode.repeated
                            )

                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Bible  Search Challenge",style: GoogleFonts.poppins(fontSize: 20.sp,fontWeight: FontWeight.w700,color: Color(0xff1EA91E)),),

                              ],
                            ),
                          ),
                        ),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("What is this Bible Search Challenge",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                          Icon(Icons.navigate_next_rounded,color: Colors.white,)
                        ],
                      ),
                    )
                  ],
                ),

              ),
            )

          ],
        ),
      ),
    );
  }
}
