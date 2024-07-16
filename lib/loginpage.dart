import 'package:flutter/material.dart';

class raj4 extends StatefulWidget {
  const raj4({Key? key}) : super(key: key);

  @override
  State<raj4> createState() => _raj4State();
}

class _raj4State extends State<raj4> {
  bool _colorss=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(18),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter name',
                        hintText: 'Enter your name',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'password',
                        hintText: 'enter your password',
                      ),
                    ),
                  ),

        ElevatedButton(onPressed: (){}, child: Text("Helloooo")),

        FloatingActionButton(

        child: Icon(Icons.cable),
      backgroundColor: _colorss ? Colors.greenAccent : Colors.purple,
      foregroundColor: Colors.white,
      onPressed: () {
        setState(() {
          _colorss = !_colorss;
        });
      },
    )

    ]))));
  }
}
