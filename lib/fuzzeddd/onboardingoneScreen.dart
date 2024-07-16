import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'onboardingonescreen1.dart';

class image extends StatefulWidget {
  const image(param0, {Key? key}) : super(key: key);

  @override
  State<image> createState() => _imageState();

  Future<Image> (Map data) {}
}

class _imageState extends State<image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          padding: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children:[

            SvgPicture.asset('assets/images/main1.svg'),

            Text('Find your partner with us',
              style: TextStyle(
           fontWeight: FontWeight.w600,fontSize: 24),),
           SizedBox(height: 20,),
           Text('choose your partner of choice',
           style: TextStyle(
             color: Colors.grey,
           ),
           ),
            SizedBox(height: 100),
            Container(
              height:60,
              width:333,
                child:
                ElevatedButton(
              child: const Text('get started',
                style: TextStyle(
               color: Colors.white,
             ),
              ),
                 style: ElevatedButton.styleFrom(
                   padding: EdgeInsets.all(20),
             backgroundColor: Colors.deepOrange
             ),
                onPressed: () {},
                ),

            ),

              TextButton(
                onPressed: () {
Get.to(imagenone());                },
                child:  Text('Skip',
                style: TextStyle(
                  color:Colors.grey,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
                ),
              ),

    ]))),

    );
  }
}
