import 'package:flutter/material.dart';

class raj2 extends StatefulWidget {
  const raj2({Key? key}) : super(key: key);

  @override
  State<raj2> createState() => _raj2State();
}

class _raj2State extends State<raj2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child:Padding(
            padding: EdgeInsets.all(12),
            child:
              Column(
                mainAxisAlignment:MainAxisAlignment.start,
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 60,),
                  Container(height: 50,width: 50,color: Colors.black,),
                  Container(height: 50,width: 50,color: Colors.black,),
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(height: 50,width: 50,color: Colors.orange,),
               Container(),
               Container(height: 50,width: 50,color: Colors.orange,),
              ]),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
            Container(height: 50,width: 50,color: Colors.grey,),
                  Container(height: 50,width: 50,color: Colors.grey,),
              Container(width: 40,),
            ]),
                ]),
          ),
        ),
      ),
    );
  }
}
