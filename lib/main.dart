import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:practice2/Gridview2.gart.dart';
import 'package:practice2/Model/login_controller.dart';
import 'package:practice2/fuzzeddd/GetOTPVerificatio.dart';
import 'package:practice2/fuzzeddd/chat.dart';
import 'package:practice2/fuzzeddd/dropdown.dart';
import 'package:practice2/fuzzeddd/BlockedContacts.dart';

import 'package:practice2/fuzzeddd/imagepicker1.dart';
import 'package:practice2/fuzzeddd/Imagepicker.dart';
import 'package:practice2/fuzzeddd/imagepickgallery.dart';
import 'package:practice2/fuzzeddd/LISTAPI.dart';
import 'package:practice2/fuzzeddd/loginform.dart';
import 'package:practice2/fuzzeddd/mobilenumber.dart';
import 'package:practice2/fuzzeddd/payment.dart';
import 'package:practice2/fuzzeddd/who would you like to date.dart';
import 'package:practice2/fuzzeddd/onboardingScreen3.dart';
import 'package:practice2/fuzzeddd/onboardingoneScreen.dart';
import 'package:practice2/fuzzeddd/onboardingonescreen1.dart';
import 'package:practice2/fuzzeddd/onboardingscreen2.dart';
import 'package:practice2/gridview.dart';
import 'package:practice2/gridview1.dart';
import 'package:practice2/gridview3.dart';
import 'package:practice2/home_Scrren.dart';
import 'package:practice2/listview2.dart';
import 'package:practice2/listview3.dart';
import 'package:practice2/listviewpractice.dart';
import 'package:practice2/newsapp.dart';
import 'package:practice2/onboardingonescreen1.dart';
import 'package:practice2/home_page.dart';
import 'package:practice2/raj.dart';
import 'package:practice2/raj1.dart';
import 'package:practice2/raj10.dart';
import 'package:practice2/raj2.dart';
import 'package:practice2/raj3.dart';
import 'package:practice2/loginpage.dart';
import 'package:practice2/raj5.dart';
import 'package:practice2/raj6.dart';
import 'package:practice2/raj7.dart';
import 'package:practice2/raj8.dart';
import 'package:practice2/raj9.dart';
import 'package:practice2/utils/photos.dart';
import 'package:practice2/utils/test.dart';


import 'UsingApi/UsingForLoop.dart';
import 'fuzzeddd/DropDownMenuAPI.dart';
import 'fuzzeddd/FetchDataAPI.dart';
import 'fuzzeddd/SiqnImageAP.dart';
import 'listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:const images5 ()
    );
  }
}

