import 'package:flutter/material.dart';

class raj3 extends StatefulWidget {
  const raj3({Key? key}) : super(key: key);

  @override
  State<raj3> createState() => _raj3State();
}

class _raj3State extends State<raj3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text ("login form",
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(18),
                  child: TextField(
                 decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter name',
                      hintText:'Enter your name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(18),
                  child: TextField(
                    decoration:InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'password',
                      hintText:'enter your password',
                    ),
                  ),
                ),
                ElevatedButton(
                  child: const Text("log in",
                  style: TextStyle(
                    color:Colors.green,
                    backgroundColor: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontStyle:FontStyle.italic,
                  ),
                  ),
                  style: ElevatedButton.styleFrom(

                    ),
                  onPressed: () {},
                ),
        ]),
      ),
      ));
  }
}

