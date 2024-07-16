/// statusCode : 200
/// status : "success"
/// message : "Logged in successfully"
/// data : {"user":{"id":120,"email":"gbruweiffaui@yopmail.com"},"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTIwLCJlbWFpbCI6ImdicnV3ZWlmZmF1aUB5b3BtYWlsLmNvbSIsImlhdCI6MTcxODk3Mjk0MH0.dSquSJ93IeAe5Vr28cwWe9Dy1Wkn2RZZXlcfFCXiJm0"}

class LoginModel {
  LoginModel({
      num? statusCode, 
      String? status, 
      String? message, 
      Data? data,}){
    _statusCode = statusCode;
    _status = status;
    _message = message;
    _data = data;
}

  LoginModel.fromJson(dynamic json) {
    _statusCode = json['statusCode'];
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _statusCode;
  String? _status;
  String? _message;
  Data? _data;
LoginModel copyWith({  num? statusCode,
  String? status,
  String? message,
  Data? data,
}) => LoginModel(  statusCode: statusCode ?? _statusCode,
  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  num? get statusCode => _statusCode;
  String? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusCode'] = _statusCode;
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// user : {"id":120,"email":"gbruweiffaui@yopmail.com"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTIwLCJlbWFpbCI6ImdicnV3ZWlmZmF1aUB5b3BtYWlsLmNvbSIsImlhdCI6MTcxODk3Mjk0MH0.dSquSJ93IeAe5Vr28cwWe9Dy1Wkn2RZZXlcfFCXiJm0"

class Data {
  Data({
      User? user, 
      String? token,}){
    _user = user;
    _token = token;
}

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
  }
  User? _user;
  String? _token;
Data copyWith({  User? user,
  String? token,
}) => Data(  user: user ?? _user,
  token: token ?? _token,
);
  User? get user => _user;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['token'] = _token;
    return map;
  }

}

/// id : 120
/// email : "gbruweiffaui@yopmail.com"

class User {
  User({
      num? id, 
      String? email,}){
    _id = id;
    _email = email;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _email = json['email'];
  }
  num? _id;
  String? _email;
User copyWith({  num? id,
  String? email,
}) => User(  id: id ?? _id,
  email: email ?? _email,
);
  num? get id => _id;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['email'] = _email;
    return map;
  }

}