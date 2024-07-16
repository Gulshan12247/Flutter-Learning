import 'package:flutter/material.dart';

class raj1 extends StatefulWidget {
  const raj1({Key? key}) : super(key: key);

  @override
  State<raj1> createState() => _raj1State();
}

class _raj1State extends State<raj1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
        child:Padding(
          padding:EdgeInsets.all(16),
        child:

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container( height: 30,width: 20,color: Colors.red,),
                Container(height: 30, width: 20,color: Colors.red,),
                Container(height: 30,width: 20,color: Colors.red,),
              ],
            ),
            Container(

              alignment:Alignment.center,
              child: Image.asset('assets/images/618fa90c201104b94458e1fb_647ecd43c5092e1c431f22fd_Flutter_App_Development_A_Step_by_Step_Tutorial_With_Dhi_Wise_E2_80_99s_Flutter_Builder_OG_Image_62b760b8fe.jpeg',
             height: 50,
              width: 50,
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container( height: 30,width: 20,color: Colors.yellow,),
                Container(height: 30, width: 20,color: Colors.yellow,),
              ],
            ),



          ]),
        ),
      ),
      ),
    );
  }
}
