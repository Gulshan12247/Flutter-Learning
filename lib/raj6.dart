import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class raj6 extends StatefulWidget {
  const raj6({Key? key}) : super(key: key);

  @override
  State<raj6> createState() => _raj6State();
}

class _raj6State extends State<raj6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Text('signup',
                  style: TextStyle(fontSize: 30),),
              ),
            Container(
              margin: EdgeInsets.all(40),
              child:
              Text('signup',
                style: TextStyle(fontSize: 30),),
            ),


            ]),

      ),
      ),
    );
  }
}
