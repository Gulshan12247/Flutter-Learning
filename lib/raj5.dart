import 'package:flutter/material.dart';
class raj5 extends StatefulWidget {
  const raj5({Key? key}) : super(key: key);

  @override
  State<raj5> createState() => _raj5State();
}

class _raj5State extends State<raj5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child:Container(
        alignment: Alignment.center,
        child:Padding(
          padding: EdgeInsets.all(13),
          child:

              Container(
                height: 200,width: 200, color: Colors.blue,
                alignment: Alignment.center,
                child: Image.asset('assets/images/618fa90c201104b94458e1fb_647ecd43c5092e1c431f22fd_Flutter_App_Development_A_Step_by_Step_Tutorial_With_Dhi_Wise_E2_80_99s_Flutter_Builder_OG_Image_62b760b8fe.jpeg',
                width: 100,

                ),
              ),

          ),
        ),
      ),
    );
  }
}
