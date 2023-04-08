import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/AuthScreens/LoginScreen.dart';

import 'leaderBoard.dart';
class Profile extends StatefulWidget {
   Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool switch1=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 13).r,
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
                        child:
                        ImageIcon(AssetImage("assets/images/backicon.png"),color: Colors.yellow,),
                      ),
                    ),
                    Text(
                      "Profile",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(""),

                  ],
                ),
              ),
              Container(
                height:95.h ,
                width:329.w ,
                decoration: BoxDecoration(
                  color: Color(0xff000000).withOpacity(0.25),

                  borderRadius: BorderRadius.circular(10),


                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("All Time Bible score",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,decoration: TextDecoration.underline),)
                   , Text("22,210",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.w700,color: Color(0xff0DFF25)),)

                  ],
                ),
              ),
              SizedBox(height: 5.h,),
              Container(
                height:17.h ,
                width:329.w ,
                decoration: BoxDecoration(
                  color: Color(0xff000000).withOpacity(0.25),

                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),

                  ),
                    gradient:LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,

                        colors: [ Color(0xffFFB301),Color(0xffFF2600),]


                    )
              )),
              SizedBox(height: 10.h,),

              Container(
                height:46.h ,
                width:329.w ,
                decoration: BoxDecoration(
                  color: Color(0xff000000).withOpacity(0.25),

                  borderRadius: BorderRadius.circular(10),


                ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LeaderBoard()));

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: ImageIcon(AssetImage("assets/images/fire1.png"),color: Colors.yellow,))
                      ,  Text("1",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,decoration: TextDecoration.underline),),
                        SizedBox(width: 40,),
                         Text("Leaderboard",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)

                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height:46.h ,
                        width:329.w ,
                        decoration: BoxDecoration(
                          color: Color(0xff000000).withOpacity(0.25),

                          borderRadius: BorderRadius.circular(10),


                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: 30.h,
                                  width: 30.w,
                                  child: ImageIcon(AssetImage("assets/images/a.png"),color: Color(0xff1DEAEA),))
                              ,  Text("1",style: GoogleFonts.poppins(fontSize: 20.sp,fontWeight: FontWeight.w600,color: Colors.white,decoration: TextDecoration.underline),),
                              SizedBox(width: 40,),
                              Text("Discovered",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.white),)

                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w,),
                    Expanded(
                      child: Container(
                        height:46.h ,
                        width:329.w ,
                        decoration: BoxDecoration(
                          color: Color(0xff000000).withOpacity(0.25),

                          borderRadius: BorderRadius.circular(10),


                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      height: 30,
                                      width: 30,
                                      child: Icon(Icons.favorite,color: Colors.red,)),
                                  Text("1",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,decoration: TextDecoration.underline),),

                                ],
                              ),

                              Text("Liked",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)



                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("APP SETTINGS",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                       Icon(Icons.notifications_none_outlined,color: Colors.red,),
                        SizedBox(width: 20,),
                        Text("Notifications",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)

                      ],),
                  ),
                  Switch(value: switch1, onChanged: (value){
                    switch1=value;


                  })
                ],
              ),
              Divider(thickness: 0.2,color: Colors.white,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      SizedBox(width: 20,),
                      Text("Rate App",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)

                    ],),
                  ),
                  Icon(Icons.navigate_next_outlined,size: 30,color: Colors.white,)
                ],
              ),
              Divider(thickness: 0.1,color: Colors.white,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.message_rounded,color: Colors.green,),
                        SizedBox(width: 20,),
                        Text("Give Feedback",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)

                      ],),
                  ),
                  Icon(Icons.navigate_next_outlined,size: 30,color: Colors.white,)
                ],
              ),
              Divider(thickness: 0.1,color: Colors.white,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.email_sharp,color: Color(0xff1DEAEA),),
                        SizedBox(width: 20,),
                        Text("Contact Support",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)

                      ],),
                  ),
                  Icon(Icons.navigate_next_outlined,size: 30,color: Colors.white,)
                ],
              ),
              Divider(thickness: 0.1,color: Colors.white,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.info,color: Colors.white,),
                        SizedBox(width: 20,),
                        Text("About KJVERSE",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)

                      ],),
                  ),
                  Icon(Icons.navigate_next_outlined,size: 30,color: Colors.white,)
                ],
              ),
              Divider(thickness: 0.1,color: Colors.white,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                       Icon(Icons.privacy_tip_outlined,color: Colors.blue,),
                        SizedBox(width: 20,),
                        Text("Privacy Policy",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)

                      ],),
                  ),
                  Icon(Icons.navigate_next_outlined,size: 30,color: Colors.white,)
                ],
              ),
              Divider(thickness: 0.1,color: Colors.white,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: ()async{
                       
                          await FirebaseAuth.instance.signOut().then((value) =>
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen() ))
                          );
                        
                      },
                      child: Container(

                          child: Row(
                        children: [
                          Text("Logout",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.red),),
                          Icon(Icons.login,color: Colors.red,),
                        ],
                      )),
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
}
