import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:practice2/Model/LoginModel.dart';
import 'package:practice2/services/api_service.dart';

class Loginform extends StatefulWidget {
  const Loginform({Key? key}) : super(key: key);

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late LoginModel login;
  bool _isLoading = false;

  APIService service = APIService(Dio());

  Future<void> _login() async {
    setState(() {
      _isLoading = true;
    });

    var params = {
      "email": _nameController.text.toString(),
      "password": _passwordController.text.toString()
    };

    try {
      login = await service.LoginApi(params);

      if (login.statusCode == 200) {
        _showDialog("Successful Login");
      } else {
        _showDialog("Invalid credentials. Please try again.");
      }
    } catch (e) {
      _showDialog("Failed to login. Please try again later.");
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _showDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Login Status"),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your Username',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
              ),
              Container(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  child: _isLoading
                      ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  )
                      : Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: _isLoading ? null : _login,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
