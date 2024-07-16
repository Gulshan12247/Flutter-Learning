





// using the post api and get the data/response from server. //


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice2/Model/Image12Model.dart';
import '../services/api_service.dart';


class Fetchdata extends StatefulWidget {
  const Fetchdata({Key? key}) : super(key: key);

  @override
  State<Fetchdata> createState() => _FetchdataState();
}

class _FetchdataState extends State<Fetchdata> {
  @override
  Widget build(BuildContext context) {
    var parms  = {"_id":"6686461e80c391e9c4cd685b"};

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(5),
          child: FutureBuilder(
            future: Get.put(APIService(Dio())).imageprofile(parms,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9pZCI6IjY2ODY0Y2E1NTBkNzY2ZjJiN2RiZTA4ZiIsImVtYWlsIjoiQWRpdHlhQGdtYWlsLmNvbSIsImxvZ2luVGltZSI6MTcyMDA4NDE5OH0sImlhdCI6MTcyMDA4NDE5OCwiZXhwIjoxNzUxNjIwMTk4fQ.fVV9m-YNC-BDxoXCuHf9lPTBXBQdYjG7FM7hkrQRXSE'),
    builder: (BuildContext context, AsyncSnapshot<Image12Model> snapshot)
    {
    if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(
    child: CircularProgressIndicator());
    }
        else if (snapshot.hasError) {
    return Center(child: Text('Error: ${snapshot.error}'));
    }
           else if (snapshot.data!.data!.user!.images!.isEmpty) {
           return Center(child: Text('No data available'));
    }else{

            return ListView.builder(
                itemCount: snapshot.data!.data!.user!.images!.length,
    itemBuilder: (BuildContext context, int index) {
         String? imagess=snapshot.data!.data!.user!.images![index].toString();
     return Container(
       height: 400,
       width: 400,
       child: Image.network(imagess,height: 100,width: 100,),

     );
       });}}),
      ),
    ));
  }
}
