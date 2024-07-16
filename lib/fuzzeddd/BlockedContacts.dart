import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  List<String> Images = [
    'assets/images/Rectangle 2902.png',
    'assets/images/Rectangle 2902.png',
    'assets/images/Rectangle 2904.png',
    'assets/images/Rectangle 2905.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
Icon(Icons.arrow_back_ios_new),
                  Container(
                    padding: EdgeInsets.only(right: 60),
                    child:
                  Text("Block Contacts",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  )
                  )

                ],
              ),
            SizedBox(height: 40,),
            Expanded(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 10,
              ),
              itemCount: Images.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                    height: 400,
                    width: 100,
                    child: Center(
                      child: Stack(alignment: Alignment.center, children: [

                        SizedBox(height: 30,),
                        Container(
                          height: 600,
                          width: 600,
                          child: Image.asset(Images[index]),
                        ),
                        Positioned(
                          height: 20,
                          width: 100,
                          bottom: 20,
                          child: ElevatedButton(
                            child: Text(
                              'Blocked',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w800),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ]),
                    ));
              }),)])
        ),
      ),
    );
  }
}
