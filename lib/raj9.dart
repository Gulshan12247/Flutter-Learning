
import 'package:flutter/material.dart';

class sohan extends StatefulWidget {
  const sohan({Key? key}) : super(key: key);

  @override
  State<sohan> createState() => _sohanState();
}

class _sohanState extends State<sohan> {
  List<String> images = [
    'assets/images/colorful-abstract-marbling-art-with-vivid-swirling-patterns_160081-3495.jpeg'
  ];
  List<String> names = ['name'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 12,
            itemBuilder: (context, position) {
              return
                Container(
                child:
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Container(
                    color: Colors.blue,
                    height: 200,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/images/colorful-abstract-marbling-art-with-vivid-swirling-patterns_160081-3495.jpeg",
                                height: 100, width: 100),
                            Image.asset("assets/images/colorful-abstract-marbling-art-with-vivid-swirling-patterns_160081-3495.jpeg",
                                height: 100, width: 100),                          ],
                        )
                        ,  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Hellooo")

                      ],
                    ),
                  ])
                  )));
            }));
  }
}
