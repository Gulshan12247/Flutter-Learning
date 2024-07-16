import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice2/fuzzeddd/onboardingoneScreen.dart';

class Payment1 extends StatefulWidget {
  const Payment1({Key? key}) : super(key: key);

  @override
  State<Payment1> createState() => _Payment1State();
}

class _Payment1State extends State<Payment1> {
  List<String> images = [
    'assets/images/Rectangle 2903-5.png',
    'assets/images/Rectangle 2910.png',
    'assets/images/Rectangle 2905-3.png',
  ];
  List<String>text=['See Who Likes\n' 'You',
    'UnlimitedLikes','Lorem '];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/Side view smiley couple hugging.png')),
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    SizedBox(height: 40),
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.cut_outlined),
                    ),
                    SizedBox(height: 10),
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'You have to pay\n'
                          'to see like this',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    Align(alignment: Alignment.center),
                    Text(
                        'Lorem Ipsum is simply dummy text of the \n'
                        'printing and typesetting industry',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 200,
                      width: 300,
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              child:
                              GridView.count(
                                scrollDirection: Axis.horizontal,
                                crossAxisCount: 1,
                                crossAxisSpacing: 2,
                                mainAxisSpacing: 4,
                                children: List.generate(images.length, (index) {
                                  return Container(
                                    height: 400,
                                    width: 500,
                                    alignment: Alignment.center,
                                    child: Center(
                                      child: Stack(
                                        children: [
                                          SizedBox(height: 30,),
                                          Container(
                                          height:400,
                                            width: 400,
                                       child: Image.asset(images[index]),
                                          ),
                                      Container(
                                        child: Center(
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                bottom:00,
                                                height: 96,
                                                left: 40,
                                                child:
                                              Text(text[index],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w800,
                                              ),
                                              ),
                                              )],
                                          ),
                                        ),
                                      )
                                     
                                      ],
                                      ),),
                                  );
                                }),
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                        height: 60,
                        width: 300,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                          ),
                          child: Text(
                            '0.50 pay/like',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onPressed: () {},
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 80, bottom: 10, left: 20)),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'This is an Auto-renewable subscription Payment is charged\n'
                        'to iTunes Account at confirmation. Subscribation is renewed \n'
                        'unlessturned off 24h before the period ends',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.5,
                        ),
                      ),
                    )
                  ]))),
    );
  }
}
