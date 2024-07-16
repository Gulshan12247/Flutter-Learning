import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class Chating extends StatefulWidget {
  const Chating({Key? key}) : super(key: key);

  @override
  State<Chating> createState() => _ChatingState();
}

class _ChatingState extends State<Chating> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment: Alignment.center,
              child:
              Container(
                height: 60,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 600,
                          width: 400,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Padding(padding: EdgeInsets.only(top: 20)),
                       Text('report this person',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600,
                       ),
                       ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text('We want to protect our community and make sure feel  \n'
                            'safe. Don’t worry, your feedback is anonymous and they \n'
                            'won’t know that you’ve blocked or reported them.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,

                          ),
                        ),
                        Padding(padding:EdgeInsets.only(top: 10)),
                        Container(
                          height: 300,
                          width: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height:50,
                                child:Image.asset('assets/images/Group 33702.png',
                                ),
                              ),
                              Container(
                                height:50,
                                child:Image.asset('assets/images/Group 33701.png'),
                              ),
                              Container(
                                height:50,
                                child:Image.asset('assets/images/Group 33703.png'),
                              ),
                              Container(
                                height:50,
                                child:Image.asset('assets/images/Group 33704.png'),
                              ),
                              Container(
                                height:50,
                                child:Image.asset('assets/images/Group 33705.png'),
                              ),
                              Container(
                                height:50,
                                child:Image.asset('assets/images/Group 33706.png'),
                              ),

                              ]),

                        )
                     ],

                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Elevated Button'),
                ),
              ),
              )],
          ),
        ),
      ),
    );
  }
}
