import 'package:flutter/material.dart';
import 'package:practice2/Model/ForModel.dart';

class test1 extends StatefulWidget {
  const test1({Key? key}) : super(key: key);

  @override
  State<test1> createState() => _test1State();
}

class _test1State extends State<test1> {
  var selecteditem ='';
  @override
  Widget build(BuildContext context ){
    return Scaffold(
      appBar: AppBar(
        title: Text('Items'),
        actions: [
                      PopupMenuButton<String>(
                         onSelected: (String value) {
                      setState(() {
                         selecteditem = value.toString();
                      print(selecteditem);
                      });
  },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
                     value: 'Item 1',
                    child: Text('Item 1'),
               ),
                            PopupMenuItem<String>(
                    value: 'Item 2',
                     child: Text('Item 2'),
                    ),
            PopupMenuItem<String>(
              value: 'Item 3',
             child: Text('Item 3'),
              ),
        ]),
        ],
          ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width ,
          child: Text('Select item'),

        ),
      ),
    );
  }
}
