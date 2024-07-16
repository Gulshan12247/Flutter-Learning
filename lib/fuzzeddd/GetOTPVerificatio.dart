import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';



class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                  },
                ),
              ),
              Text(
                'OTP Verification',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'We will send you a one-time password to this number',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              SvgPicture.asset('assets/images/Group 33580 (1).svg'),
              SizedBox(height: 20,),
              Text('Enter the OTP'),
             SizedBox(height: 10),
             Container(
               height: 60,
               width: 350,

               padding: EdgeInsets.all(5),
               child:
               PinCodeTextField(
                length: 6,
                textStyle: TextStyle(fontSize: 20),
                showCursor:  true,
                   pinTheme: PinTheme(
                     fieldHeight: 45,
                     fieldWidth: 45,
                     fieldOuterPadding: EdgeInsets.only(left: 3),
                     shape: PinCodeFieldShape.box,

                     activeFillColor: Colors.grey,
                     inactiveFillColor: Colors.grey,
                     selectedFillColor: Colors.grey,
                     activeColor:Colors.grey,
                     inactiveColor:Colors.grey,
                     disabledColor:Colors.grey,
                      errorBorderColor:Colors.grey,
                   ),

                onCompleted: (text) {

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $text'),
                      );
                    },
                  );
                }, appContext: context,
              )),
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                height: 40,
                width: 350,
                child: ElevatedButton(
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white70,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  onPressed: () {}
                ),
              ),
             SizedBox(height: 40),
              Text("Didn't receive the OTP"),
              Text(
                'Resend OTP',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              ]),
        ),

    ));
  }
}
