import 'package:flutter/material.dart';

class listview1 extends StatefulWidget {
  const listview1({Key? key}) : super(key: key);

  @override
  State<listview1> createState() => _listview1State();
}

class _listview1State extends State<listview1> {
  final List<String> images1 = [
    'assets/images/618fa90c201104b94458e1fb_647ecd43c5092e1c431f22fd_Flutter_App_Development_A_Step_by_Step_Tutorial_With_Dhi_Wise_E2_80_99s_Flutter_Builder_OG_Image_62b760b8fe.jpeg',
    'assets/images/abstract-design-colorful-ink-waves-flowing-underwater-generated-by-ai_188544-9598.jpeg'
  ];

  final List<String> images2 = [
    'assets/images/618fa90c201104b94458e1fb_647ecd43c5092e1c431f22fd_Flutter_App_Development_A_Step_by_Step_Tutorial_With_Dhi_Wise_E2_80_99s_Flutter_Builder_OG_Image_62b760b8fe.jpeg',
    'assets/images/abstract-design-colorful-ink-waves-flowing-underwater-generated-by-ai_188544-9598.jpeg'

  ];

  final List<String> names = ['gulshan', 'ankit'];
  late  imageModel image;


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.amber,
          child: ListView.builder(
            itemCount: images1.length,
            itemBuilder: (context, position) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Image.asset(images1[position],height: 90,width: 90,),
                    Image.asset(images2[position],height: 150,width: 90,),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(names[position],
                      style: TextStyle(
                        color: Colors.black),
                      ),
                    ],
                  ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class imageModel {
}