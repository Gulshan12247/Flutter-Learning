import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class builderExample extends StatefulWidget {
  const builderExample({Key? key}) : super(key: key);

  @override
  State<builderExample> createState() => _builderExampleState();
}

class _builderExampleState extends State<builderExample> {
  var arrColors = [
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.orange,
    Colors.deepPurpleAccent,
    Colors.lightBlueAccent,
    Colors.lightGreen,];
  List<String>names=['gulshan','sahil','sunil','naresh','golu','aksay','raj'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
  child: SingleChildScrollView(child:Column(
    children: [
      Container(
  padding: EdgeInsets.all(20),
  color: Colors.lightBlue,
  height:MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.width,
  child: GridView.count(
      crossAxisCount: 3,
    crossAxisSpacing: 11,
    mainAxisSpacing: 11,
    children:List.generate(arrColors.length, (index) {
     return Container(
       alignment: Alignment.center,
       color: arrColors[index],
           child:Text(names[index],
            style: TextStyle(
  color:Colors.black,
    fontWeight:FontWeight.bold,
),
           ),

     );
    }),

    ),

  ),

    ],
  ),)

),
    );
  }
}
