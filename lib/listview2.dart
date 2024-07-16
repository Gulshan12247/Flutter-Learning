import 'package:flutter/material.dart';
class listview2 extends StatefulWidget {
  const listview2({Key? key}) : super(key: key);

  @override
  State<listview2> createState() => _listview2State();
}

class _listview2State extends State<listview2> {
  final List<String> images1 = [
    'assets/images/618fa90c201104b94458e1fb_647ecd43c5092e1c431f22fd_Flutter_App_Development_A_Step_by_Step_Tutorial_With_Dhi_Wise_E2_80_99s_Flutter_Builder_OG_Image_62b760b8fe.jpeg',
    'assets/images/abstract-design-colorful-ink-waves-flowing-underwater-generated-by-ai_188544-9598.jpeg',
    'assets/images/colorful-abstract-marbling-art-with-vivid-swirling-patterns_160081-3495.jpeg',
    'assets/images/free-nature-images.jpeg'
  ];

  final List<String> images2 = [
    'assets/images/618fa90c201104b94458e1fb_647ecd43c5092e1c431f22fd_Flutter_App_Development_A_Step_by_Step_Tutorial_With_Dhi_Wise_E2_80_99s_Flutter_Builder_OG_Image_62b760b8fe.jpeg',
    'assets/images/abstract-design-colorful-ink-waves-flowing-underwater-generated-by-ai_188544-9598.jpeg',
    'assets/images/colorful-abstract-marbling-art-with-vivid-swirling-patterns_160081-3495.jpeg',
    'assets/images/free-nature-images.jpeg'
    ];

  final List<String> names = ['gulshan', 'ankit','rohan','karan'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SafeArea(
    child: Container(
      color: Colors.black,

      child: ListView.builder(
          itemCount: images1.length,
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
            child: Container(
            color: Colors.red,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Image.asset(images1[position],height: 100,width: 90,),
                        Image.asset(images2[position],height: 100,width: 90,),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(names[position],
                        style: TextStyle(
                        color: Colors.black,
                  fontWeight: FontWeight.bold
                  ),

                      ),
                    ],
                  ),
                ],
              ),
            ),
            );
           }
        ),
      ),
      ),
    );
  }
}

