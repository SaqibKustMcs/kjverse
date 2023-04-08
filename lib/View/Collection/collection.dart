import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'collectionD.dart';
class Collection extends StatelessWidget {
  const Collection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff424242) ,


      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xff424242) ,
        title: Text("Collection"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/images/Vector1.png")))

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CollectionD(collectionName: 'Discovered',)));
                  },
                  child: Container(
                    width: 149.w,
                    height: 87.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: new LinearGradient(
                            colors: [
                              Color(0xff01C2FF),
                              Color(0xff0601FF),
                            ],
                            stops: [0.3, 1.0,],
                            begin: FractionalOffset.topLeft,
                            end: FractionalOffset.bottomRight,
                            tileMode: TileMode.repeated
                        )
                    ),

                    child:Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text("Discovered Empty",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CollectionD(collectionName: 'Liked',)));
                  },
                  child: Container(
                    width: 149.w,
                    height: 87.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: new LinearGradient(
                            colors: [
                              Color(0xffFFB301),
                              Color(0xffFF0000),
                            ],
                            stops: [0.3, 1.0,],
                            begin: FractionalOffset.topLeft,
                            end: FractionalOffset.bottomRight,
                            tileMode: TileMode.repeated
                        )
                    ),

                    child:Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text("Liked Empty",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.white),),
                      ),
                    ),
                  ),
                )

              ],
            )
            ,
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 149.w,
                  height: 87.h,
                  decoration: BoxDecoration(
                    color: Color(0xff000000).withOpacity(0.25),
                      borderRadius: BorderRadius.circular(10),
                  ),

                  child:Center(
                    child: Icon(
                      Icons.add,color: Colors.yellow,
                    )
                ),),
                InkWell(
                  onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CollectionD(collectionName: 'My Collection',)));

                  },
                  child: Container(
                    width: 149.w,
                    height: 87.h,
                    decoration: BoxDecoration(
                      color: Color(0xff000000).withOpacity(0.25),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child:Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text("My Collection Empty",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.white),),
                      ),
                    ),),
                ),

              ],
            )



          ],
        ),
      ),
    );
  }
}
