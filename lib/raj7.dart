import 'package:flutter/material.dart';

class TestingNew extends StatefulWidget {
  const TestingNew({Key? key}) : super(key: key);

  @override
  State<TestingNew> createState() => _TestingNewState();
}

class _TestingNewState extends State<TestingNew> {
  List<String> gulshan = ['name', 'gulshan', 'amit', 'sunil', 'ankit'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index) {
              return  Text(gulshan[index]);
            },
          ),
        ),
      ),
    );
  }
}