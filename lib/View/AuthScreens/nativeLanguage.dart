import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kjverse/Controller/appController.dart';
import 'package:kjverse/View/AuthScreens/dedicateScreen.dart';

class NativeLanguage extends StatefulWidget {
  const NativeLanguage({Key? key}) : super(key: key);

  @override
  State<NativeLanguage> createState() => _NativeLanguageState();
}

class _NativeLanguageState extends State<NativeLanguage> {
  bool visible = false;
  List list = [true, false];
  final _appController=Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 5,
                  width: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(color: Colors.yellow),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(

                children: [

                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          "Is English your native language?",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 200,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              _appController.nativeLanguage="yes".obs;

                              setState(() {
                                list[0] = true;
                                list[1] = false;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 160,
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
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Yes",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  list[0]==false?Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                  ):Icon(Icons.check_circle_outline,color: Colors.yellow,)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              _appController.nativeLanguage="No".obs;
                              print(_appController.nativeLanguage);

                              setState(() {
                                list[0] = false;
                                list[1] = true;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 160,
                              padding:
                              EdgeInsets.symmetric(horizontal: 15),
                              decoration: list[1] == false
                                  ? BoxDecoration(
                                  color: Color(0xff898787),
                                  borderRadius:
                                  BorderRadius.circular(20))
                                  : BoxDecoration(
                                  color: Color(0xff898787),
                                  borderRadius:
                                  BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.yellow)),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "No",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  list[1]==false?Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                  ):Icon(Icons.check_circle_outline,color: Colors.yellow,)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 200,),

                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>dedicateScreen()));
                          },
                          child: Container
                            (
                            height: 50,
                            width: 102,
                            decoration: BoxDecoration(
                                color: Color(0xff111111),
                                borderRadius: BorderRadius.circular(20)

                            ),
                            child: Center(
                              child: Icon(Icons.navigate_next,color: Colors.yellow,size: 30,)
                            ),
                          ),
                        )
                      ],
                    ),



                  ),
                  SizedBox(),
                ],
              ),
            ),
          ],
        )) );

  }
}
