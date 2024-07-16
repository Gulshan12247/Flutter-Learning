// import 'dart:convert';
//
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:practice2/Model/RegisterModel.dart';
//
// import 'package:practice2/Model/login_controller.dart';
// import 'package:practice2/services/api_service.dart';
//
// class login1 extends StatefulWidget {
//   const login1({Key? key}) : super(key: key);
//
//   @override
//   State<login1> createState() => _loginState();
// }
//
// class _loginState extends State<login1> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   RegisterModel? register;
//   APIService service = APIService(Dio());
//
//   // Future<void> newfun() async {
//   //   var params={
//   //     "name":"Manish",
//   //     "email":_nameController.text.toString(),
//   //     "password":_passwordController.text.toString(),
//   //     "confirm_password":_passwordController.text.toString(),
//   //     "device_token":"fJksOAl8RPux1B5G7Z9AUo:APA91bGIInspbudWwalnajqmi3jKRPtkH221xcQWFaurV9XSKP_uftXdrJ5mEu_L86maotbbR_BE6ZmlxQrklyeFaLyh-LO4gEpFTaB9MMg_suPcb9paCjLntIzu8WqPCa2sdZMPtMcr"
//   //   };
//   //
//   //   register=await service.registerApi(params);
//   //   if(register?.statusCode==200){
//   //     print('api hit s');
//   //   }
//   // }
//   Future<void> valfn() async {
//     var params = {
//       "name": "Manish",
//       "email": _nameController.text.toString(),
//       "password": _passwordController.text.toString(),
//       "confirm_password": _passwordController.text.toString(),
//       "device_token":
//           "fJksOAl8RPux1B5G7Z9AUo:APA91bGIInspbudWwalnajqmi3jKRPtkH221xcQWFaurV9XSKP_uftXdrJ5mEu_L86maotbbR_BE6ZmlxQrklyeFaLyh-LO4gEpFTaB9MMg_suPcb9paCjLntIzu8WqPCa2sdZMPtMcr"
//     };
//     register = await service.registerApi(params);
//     print('login_response --- ${register!.statusCode}');
//     if (register!.statusCode == 200) {
//       print('working');
//     }
// else{
//       print('not working');
//
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _nameController,
//                 decoration: InputDecoration(
//                   hintText: "email",
//                 ),
//               ),
//               TextFormField(
//                   controller: _passwordController,
//                   decoration: InputDecoration(
//                     hintText: "password",
//                   )),
//               SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 child: InkWell(
//                   onTap: valfn,
//                   child: Container(
//                     height: 50,
//                     width: 250,
//                     padding: EdgeInsets.all(10),
//                     color: Colors.deepOrange,
//                     child: Text(
//                       'log in',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
