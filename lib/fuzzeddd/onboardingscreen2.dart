import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class images3 extends StatefulWidget {
  const images3({Key? key}) : super(key: key);

  @override
  State<images3> createState() => _images3State();
}

class _images3State extends State<images3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image:
                DecorationImage(
                    image: AssetImage('assets/images/img_3.png')),
          ),
          padding: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset('assets/images/img.png'),
              const SizedBox(height: 10),
              const Text('Welcome to'),
              const Text(
                'Fuzzed',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              SvgPicture.asset('assets/images/Group 33580.svg'),
              Padding(padding: EdgeInsets.only(top: 20),child:
              Container(
                height: 60,
                width: 300,
                child: ElevatedButton(
                  child: const Text(
                    'Log in using mobile number',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(5),
                    backgroundColor: Colors.deepOrange,
                  ),
                  onPressed: () {},
                ),
              )),
              const SizedBox(
                height: 30,
              ),
              const Text('Or log in using'),
              const SizedBox(
                height: 20,
              ),
              SvgPicture.asset('assets/images/Group 33574.svg'),
              const SizedBox(
                height: 40,
              ),
              const Text('Truble logging in'),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                height: 60,
                width: 300,
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'By tapping log in, you agree with our ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: 'Terms of service ',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,),
                        ),
                        TextSpan(
                          text: '& ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
