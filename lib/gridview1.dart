import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class count extends StatefulWidget {
  const count({Key? key}) : super(key: key);

  @override
  State<count> createState() => _countState();
}

class _countState extends State<count> {
  var arrColors = [
  Colors.red,
  Colors.black,
  Colors.purple,
  Colors.orange,
  Colors.deepPurpleAccent,
  Colors.lightBlueAccent,
  Colors.lightGreen,
    Colors.red,
    Colors.black,
    Colors.purple,
    Colors.orange,
    Colors.deepPurpleAccent,
    Colors.lightGreenAccent,
    Colors.lightGreen,
];

@override
Widget build(BuildContext context) {
  return Scaffold(
    body:SafeArea(
      child: Column(
        children: [
          SingleChildScrollView(
            child:
            Container(
              padding: EdgeInsets.all(20),
             color: Colors.lightBlue,
            height: 200,
            width: 200,
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: List.generate(arrColors.length, (index) {
                return Container(
                  color: arrColors[index],
                );
              }),
            ),
          ),
          )],
      ),
  ));
}
}