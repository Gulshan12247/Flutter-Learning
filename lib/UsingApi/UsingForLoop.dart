
// In this program we are using for loop to showing the data in the help of post Api//


import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice2/services/api_service.dart';

import '../Model/ForModel.dart';

class For1loop extends StatefulWidget {
  const For1loop({Key? key}) : super(key: key);

  @override
  State<For1loop> createState() => _For1loopState();
}

class _For1loopState extends State<For1loop> {
  @override
  Widget build(BuildContext context) {
    var params = {"productId": "66619d22cb800d636479bc41"};
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(2),
          child: FutureBuilder(
            future: Get.put(APIService(Dio())).For(
                params,
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9pZCI6IjY2ODNhZjBjNDUwMjI0Njc5ZjhiN2IxNiIsImVtYWlsIjoieHl6MThAZ21haWwuY29tIiwibG9naW5UaW1lIjoxNzIwNDE5NTYzfSwiaWF0IjoxNzIwNDE5NTYzLCJleHAiOjE3NTE5NTU1NjN9.O2LPLqrxOyGMwacUJBbPWoETOAiy2zS6GQuTwBH18Dc'),
            builder: (BuildContext context, AsyncSnapshot<ForModel> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.data!.data!.item!.images!.isEmpty) {
                return Center(child: Text('No data available'));
              }
              List<Widget> widgets = [];
                for (int index = 0; index < snapshot.data!.data!.item!.images!.length; index++)
                {
                  String? imagess = snapshot.data!.data!.item!.images![index]
                      .toString();
                  widgets.add(
                    Container(
                      height: 400,
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(snapshot.data!.data!.item!.title.toString()),
                          Image.network(imagess, height: 100, width: 100),
                        ],
                      ),
                    ),
                  );
                }

                return ListView(
                  children: widgets,
                );
              }
            ),
        ),
      ),
    );
  }
}
