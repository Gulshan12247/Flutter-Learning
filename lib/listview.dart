import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List<String>images=['assets/image/colorful-abstract-marbling-art-with-vivid-swirling-patterns_160081-3495.jpeg','assets/images/abstract-design-colorful-ink-waves-flowing-underwater-generated-by-ai_188544-9598.jpeg',];
  List<String>text=['gulshan','sharma'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount:12,
        itemBuilder:(context ,position){
          return Container(
            child:Padding(
             padding:EdgeInsets.all(15),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Image.asset('assets/images/colorful-abstract-marbling-art-with-vivid-swirling-patterns_160081-3495.jpeg',
                    width: 90,height: 90,),
                     Image.asset('assets/images/abstract-design-colorful-ink-waves-flowing-underwater-generated-by-ai_188544-9598.jpeg',
                       width: 90,height: 90,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text('gulshan'),
                   Text('kumar')
                 ],

               ),
               ],
             ),
            ]),
          ));
        }
      ),

    );
  }
}
