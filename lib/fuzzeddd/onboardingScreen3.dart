import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class images4 extends StatefulWidget {
  const images4({Key? key}) : super(key: key);

  @override
  State<images4> createState() => _images4State();
}

class _images4State extends State<images4> {
  bool ismale = false;
  bool isFemale = false;
  bool isTransgender = false;


    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: SafeArea(
              child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
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
                      height: 30,
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(15, 40, 15, 15),
                        height: 300,
                        width: 400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ismale ? Colors.red : Colors.white,
                                      border: Border.all(
                                        color: Colors.red,
                                        width: 2.0,
                                      ),
                                    ),

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.male,
                                            size: 40,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              ismale = !ismale;
                                            });
                                          },
                                        ),
                                        Text('Male',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15
                                          ),
                                        ),
                                      ],
                                    )

                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isFemale ? Colors.purple : Colors
                                        .white,
                                    border: Border.all(
                                      color: Colors.red,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.female,
                                          size: 40,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            isFemale = !isFemale;
                                          });
                                        },
                                      ),
                                      Text('female',
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: isTransgender
                                          ? Colors.blue
                                          : Colors.white,
                                      border: Border.all(
                                        color: Colors.red,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            Icons.transgender,
                                            size: 40,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              isTransgender = !isTransgender;
                                            });
                                          },

                                        ),
                                        Text('other',
                                          textAlign: TextAlign.end,
                                        ),
                                      ],
                                    )
                                ),
                              ],
                            ),
                          ],
                        )),
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      height: 80,
                      width: 400,
                      child: ElevatedButton(
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            backgroundColor: Colors.deepOrange
                        ),
                        onPressed: () {
                          setState(() {

                          });
                        },
                      ),
                    ),
                  ],
                ),
              )));
    }
  }
