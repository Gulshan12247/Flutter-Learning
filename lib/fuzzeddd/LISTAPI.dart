import 'dart:core';



import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:practice2/Model/GulshanModel.dart';

import '../services/api_service.dart';

class List12345 extends StatefulWidget {
  const List12345({Key? key}) : super(key: key);

  @override
  _List12345State createState() => _List12345State();
}

class _List12345State extends State<List12345> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: FutureBuilder<GulshanModel>(
          future: Get.put(APIService(Dio())).GulshanApi(),
          builder: (BuildContext context, AsyncSnapshot<GulshanModel> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator());
            }
            else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            else if (!snapshot.hasData || snapshot.data!.body == null) {
              return Center(child: Text('No data available'));
            }
            else {
              return ListView.builder(
                itemCount: snapshot.data!.body!.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    alignment: Alignment.center,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Container(
                       height: 300,
                    width: 100,
                    padding: EdgeInsets.only(left: 2,right: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text( snapshot.data!.body![index].fullName ??''),
                    Text(snapshot.data?.body![index].id??''),
                    ])),
                    Container(
                      height: 100,
                      width: 100,
                      child:
                    Image.network(snapshot.data!.body![index].profileimage.toString() ?? ''),
                    ),
                  ]));
                },
              );
            }
          },
        ),
      ),
    );
  }
}



































// Future<void> valfn() async {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => HomeBottomBarScreen()),
//     );
//     // Navigator.of(context).pushAndRemoveUntil(
//     //     MaterialPageRoute(
//     //         builder: (context) => BlogsScreen() ),
//     //         (Route<dynamic>route) => false);
//     // Navigator.of(context).pushReplacementNamed('/home');
//
//     if (coverImage != null) {
//       var formData = d.FormData.fromMap({
//         'blog_title': _addblogController.text.toString(),
//         'blog_description': _discreptionController.text.toString(),
//         'blog_image': await d.MultipartFile.fromFile(
//           coverImage!.path,
//           filename: coverImage!.path.split('/').last,
//           contentType:
//               MediaType("blog_image", "${coverImage!.path.split(".").last}"),
//         ),
//       });
//
//       print('params, - ${formData.files}');
//       Map map = await service.one(formData, token);
//       if (map['statusCode '] == 200) {
//         // AppWidget.hideDialog();
//       } else if (map['statusCode'] == 400) {
//         // AppWidget.hideDialog();
//       }
//     }
//   }