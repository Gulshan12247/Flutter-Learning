import 'package:flutter/material.dart';

class raj8 extends StatelessWidget {
  const raj8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        itemCount: 20,
        itemBuilder: (context, position) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child:Text(
                      'name',
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                  ),
                Container(
                  padding: EdgeInsets.all(15),
                  child:Text(
                    'gulshan',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  )),
                  Container(
                      child:Text(
                        'sharma',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      )),
                ],
              ),
            ),

          );
        },
      ),
    );
  }
}
