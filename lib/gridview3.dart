import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridviewExmple extends StatefulWidget {
  const GridviewExmple({Key? key}) : super(key: key);

  @override
  State<GridviewExmple> createState() => _GridviewExmpleState();
}

class _GridviewExmpleState extends State<GridviewExmple> {
  List<String> names = ['gulshan', 'sahil', 'sunil', 'naresh', 'golu', 'aksay', 'raj'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 22,
                    crossAxisSpacing: 22,
                  ),
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/download.jpeg',
                            width: 90,
                            height: 90,
                          ),
                          Text(names[index]),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
