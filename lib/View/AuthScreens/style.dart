import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/View/AuthScreens/dedicateScreen.dart';
import 'package:kjverse/View/AuthScreens/signUp.dart';

class stylescreen extends StatefulWidget {
  const stylescreen({Key? key}) : super(key: key);

  @override
  State<stylescreen> createState() => _stylescreenState();
}

class _stylescreenState extends State<stylescreen> {
  bool visible = false;
  List list = [true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff424242),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(

                children: [
                  Row(
                    children: [
                      Container(
                        height: 5,
                        width: MediaQuery.of(context).size.width ,
                        decoration: BoxDecoration(color: Colors.yellow),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [

                        SizedBox(height: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                "What is your preferred learning style?",
                               textAlign: TextAlign.center, style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 150,),
                     Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: InkWell(
                                 onTap: () {
                                   setState(() {
                                     list[0] = true;
                                     list[1] = false;
                                   });
                                 },
                                 child: Container(
                                   height: 80,
                                   width:225,
                                   padding:
                                   EdgeInsets.symmetric(horizontal: 15),
                                   decoration:list[0]==false? BoxDecoration(
                                       color: Color(0xff898787),
                                       borderRadius:
                                       BorderRadius.circular(20)):BoxDecoration(
                                       color: Color(0xff898787),
                                       borderRadius:
                                       BorderRadius.circular(20),
                                       border: Border.all(
                                           width: 2,
                                           color: Colors.yellow)),
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Container(
                                         height: 60,
                                         width: 50,
                                         child: Image.asset("assets/images/style2.png"),
                                       ),
                                       Text("Bible studies",style: GoogleFonts.poppins(
                                           color: Colors.white,
                                           fontWeight: FontWeight.w600,
                                           fontSize: 14
                                       ),)
                                     ],
                                   ),

                                 ),
                               ),
                             ),

                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
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
                                   height: 80,
                                   width:225,
                                   padding:
                                   EdgeInsets.symmetric(horizontal: 15),
                                   decoration:list[1]==false? BoxDecoration(
                                       color: Color(0xff898787),
                                       borderRadius:
                                       BorderRadius.circular(20)):BoxDecoration(
                                       color: Color(0xff898787),
                                       borderRadius:
                                       BorderRadius.circular(20),
                                       border: Border.all(
                                           width: 2,
                                           color: Colors.yellow)),
                                   child:Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Container(
                                         height: 60,
                                         width: 70,
                                         child: Image.asset("assets/images/style1.png"),
                                       ),
                                       Text("Fun & Games",style: GoogleFonts.poppins(
                                           color: Colors.white,
                                           fontWeight: FontWeight.w600,
                                           fontSize: 14
                                       ),)
                                     ],
                                   ),

                                 ),
                               ),
                             ),

                           ],
                         ),
                       ],
                     ),

                        SizedBox(height: 140,),

                        GestureDetector(
                          onTap:(){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                          },
                          child: Container(height: 50,
                            width: 327,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: Text("Get Started",style: GoogleFonts.poppins(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16

                              ),),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              )),
        ) );

  }
}
