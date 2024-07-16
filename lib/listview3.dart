import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class listview3 extends StatefulWidget {
  const listview3({Key? key}) : super(key: key);

  @override
  State<listview3> createState() => _listview3State();
}

class _listview3State extends State<listview3> {
  List<String>subject=['software engineer','software engineer manager','system engineer','data scientist',
  'react js developer','php developer','graphic designer','software testing','database engineer'];

  List<String>name=['Apple','google','microsoft','dbs','smart','connection','pixel','functioning','Quray'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          color:Colors.white,
       child: ListView.builder(
        itemCount: subject.length,
        itemBuilder:(context, position){
          return Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.cable),
                 Padding(padding: EdgeInsets.only(left: 25),child:
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text(subject[position]),
                       Text(name[position]),
               ]
                ),)

                  ],
                ),
          );

        }

       ),

        ),




      ),
    );
  }
}
