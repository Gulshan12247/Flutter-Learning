import 'package:flutter/material.dart';

class raj extends StatefulWidget {
  const raj({Key? key}) : super(key: key);

  @override
  State<raj> createState() => _rajState();
}

class _rajState extends State<raj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
        padding: EdgeInsets.all(15),
            child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 50,width: 50,color: Colors.green,),
                Container(height: 50,width: 50,color: Colors.green,)

              ],
            ),
            Container(
              height: 50,width: 50,color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 50,width: 50,color: Colors.orange,),
                Container(height: 50,width: 50,color: Colors.orange,)

              ],
            ),
              ]),
        )

        )
    ));
  }
}
