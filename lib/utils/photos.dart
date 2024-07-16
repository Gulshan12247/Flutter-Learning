// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:dio/dio.dart';
// import 'package:practice2/Model/GulshanModel.dart';
// import 'package:practice2/Model/Image1Model.dart';
// import '../services/api_service.dart';
//
// class Image12 extends StatefulWidget {
//   const Image12({Key? key}) : super(key: key);
//
//   @override
//   State<Image12> createState() => _Image12State();
// }
//
// class _Image12State extends State<Image12> {
//   String? token;
//
//   @override
//   void initState() {
//     super.initState();
//     token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9pZCI6IjY2M2RhMmYzN2YzZTBlNWNiN2JjYTRhYSIsImVtYWlsIjoicGFua2FqMjA4NDFwc0BnbWFpbC5jb20iLCJsb2dpblRpbWUiOjE3MTg3MTQ4MTJ9LCJpYXQiOjE3MTg3MTQ4MTIsImV4cCI6MTc1MDI1MDgxMn0.sI058lYuPTj20gZtUYDk-xISCDqJBD-u48xM3TYCbXs';
//   }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text(
//           'Photos',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: SafeArea(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
//           child: FutureBuilder<Image1Model>(
//             future:Get.put(APIService(Dio())).imageModel(token),builder: (BuildContext context, AsyncSnapshot<Image1Model> snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Center(child: CircularProgressIndicator());
//               } else if (snapshot.hasError) {
//                 return Center(child: Text('Error: ${snapshot.error}'));
//               } else if (!snapshot.hasData || snapshot.data!.body == null) {
//                 return Center(child: Text('No data available'));
//               } else {
//                 return ListView.builder(
//                   itemCount: snapshot.data!.body!.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       height: 100,
//                       width: MediaQuery.of(context).size.width,
//                       padding: EdgeInsets.all(10),
//                       child: Text(snapshot.data!.body![index].images ?? ''),
//                     );
//                   },
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Image1Api {
// }
