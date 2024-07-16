import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({Key? key}) : super(key: key);

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  var arrColors = [
    Colors.red,
    Colors.black,
    Colors.purple,
    Colors.orange,
    Colors.deepPurpleAccent,
    Colors.lightBlue,
    Colors.lightGreen,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              child:
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 11,
                  mainAxisSpacing: 11,
                ),
                itemCount: arrColors.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: arrColors[index],
                  );
                },
              ),
            )),
          ],
        ),
      ),
    );
  }
}
