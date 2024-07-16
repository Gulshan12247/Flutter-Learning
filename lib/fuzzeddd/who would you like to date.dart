import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../UsingApi/LISTAPI.dart';
import '../UsingApi/loginformApi.dart';

class images5 extends StatefulWidget {
  const images5({Key? key}) : super(key: key);

  @override
  State<images5> createState() => _images5State();
}

class _images5State extends State<images5> {
  bool condition = false;
  bool isMale = false;
  bool isFemale = false;
  bool isTransgender = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/img_3.png'),
                    )),
                    padding: EdgeInsets.only(
                        top: 20, left: 0.0, right: 00, bottom: 0.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.arrow_back,
                                size: 35,
                              )),
                          Text(
                            'who would like to date',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange,
                            ),
                          ),
                          Text(
                            'please choose below anyone for dating',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isMale ? Colors.red : Colors.white,
                                  border: Border.all(
                                    color: Colors.red,
                                    width: 2.0,
                                  ),
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        print("You Selected Male");

                                        isMale = !isMale;
                                        isFemale = false;
                                        isTransgender = false;
                                      });
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Male',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        Icon(
                                          Icons.male,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isFemale ? Colors.red : Colors.white,
                                  border: Border.all(
                                    color: Colors.red,
                                    width: 2.0,
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      print("You Selected Female");
                                      isFemale = !isFemale;
                                      isMale = false;
                                      isTransgender = false;
                                    });
                                  },
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Female',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      Icon(
                                        Icons.female,
                                        color: Colors.black,
                                        size: 40,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: isTransgender
                                              ? Colors.red
                                              : Colors.white,
                                          border: Border.all(
                                            color: Colors.red,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              print("You Selected Others");

                                              isTransgender = !isTransgender;
                                              isMale = false;
                                              isFemale = false;
                                            });
                                          },
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  'other',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                Icon(
                                                  Icons.transgender,
                                                  color: Colors.black,
                                                  size: 40,
                                                ),
                                              ]),
                                        ))
                                  ],
                                )
                              ]),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 4,
                          ),
                           ElevatedButton(
                            onPressed: () {
                              if (condition = isMale) {
                                Get.to(());
                              }
                              else if (condition = isFemale) {
                                Get.to(());
                              }
                              else if (condition = isTransgender) {
                                Get.to(());
                              }
                              else {
                                (Error);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Ink(
                              decoration: BoxDecoration(

                                  gradient:
                                  const LinearGradient
                                    (
                                      begin: AlignmentDirectional.topCenter,
                                      end: AlignmentDirectional.bottomCenter,
                                      colors: [Colors.orange, Colors.deepOrange]),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                width: 333,
                                height: 48,
                                alignment: Alignment.center,
                                child: const Text(
                                  'Next',
                                  style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                 )]),
  ))));
  }
}
