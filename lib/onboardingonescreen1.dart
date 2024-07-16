import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class image1 extends StatefulWidget {
  const image1(String string, {Key? key}) : super(key: key);

  @override
  State<image1> createState() => _image1State();
}

class _image1State extends State<image1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Container(
          padding:EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              SvgPicture.asset('assets/images/OBJECTS-2.svg'),
              SizedBox(height: 20,),
              Text('Make it happen!\n'
               'Your Perfect Partner maybe\n'
                   'waiting for you!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.black,
                fontSize:20,
              ),
              ),
              SizedBox(height: 10),
              Text('Choose your partner of choise',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
              ),
            SizedBox(height: 90),
              Container(
                height: 60,
                 width: 300,
                child:
                ElevatedButton(
                  child: const Text('Next',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
               style: ElevatedButton.styleFrom(
                 padding: EdgeInsets.all(20),
                    backgroundColor: Colors.deepOrange,

               ),
                  onPressed: () {},
                ),
              ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight:FontWeight.w700,
                  fontSize: 14,
                ),
              )
            ),

            ],
          ),
        ),
      ),
    );
  }
}
