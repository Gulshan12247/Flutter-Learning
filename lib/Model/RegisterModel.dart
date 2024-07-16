/// statusCode : 200
/// status : "success"
/// message : "Successfully added vendor"
/// data : {"user":{"id":119,"email":"mailto:gbruweiffauki@yopmail.com","name":"Manish","device_token":"fJksOAl8RPux1B5G7Z9AUo:APA91bGIInspbudWwalnajqmi3jKRPtkH221xcQWFaurV9XSKP_uftXdrJ5mEu_L86maotbbR_BE6ZmlxQrklyeFaLyh-LO4gEpFTaB9MMg_suPcb9paCjLntIzu8WqPCa2sdZMPtMcr"},"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTE5LCJlbWFpbCI6ImdicnV3ZWlmZmF1a2lAeW9wbWFpbC5jb20iLCJuYW1lIjoiTWFuaXNoIiwiZGV2aWNlX3Rva2VuIjoiZkprc09BbDhSUHV4MUI1RzdaOUFVbzpBUEE5MWJHSUluc3BidWRXd2FsbmFqcW1pM2pLUlB0a0gyMjF4Y1FXRmF1clY5WFNLUF91ZnRYZHJKNW1FdV9MODZtYW90YmJSX0JFNlptbHhRcmtseWVGYUx5aC1MTzRnRXBGVGFCOU1NZ19zdVBjYjlwYUNqTG50SXp1OFdxUENhMnNkWk1QdE1jciIsImlhdCI6MTcxODk1NDQ0OH0.iTtQ5iFCw8bjvIIShGFhBamXywrvAU_-UCK1UDH7fT8"}

class RegisterModel {
  RegisterModel({
      num? statusCode, 
      String? status, 
      String? message, 
      Data? data,}){
    _statusCode = statusCode;
    _status = status;
    _message = message;
    _data = data;
}

  RegisterModel.fromJson(dynamic json) {
    _statusCode = json['statusCode'];
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _statusCode;
  String? _status;
  String? _message;
  Data? _data;
RegisterModel copyWith({  num? statusCode,
  String? status,
  String? message,
  Data? data,
}) => RegisterModel(  statusCode: statusCode ?? _statusCode,
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

/// user : {"id":119,"email":"mailto:gbruweiffauki@yopmail.com","name":"Manish","device_token":"fJksOAl8RPux1B5G7Z9AUo:APA91bGIInspbudWwalnajqmi3jKRPtkH221xcQWFaurV9XSKP_uftXdrJ5mEu_L86maotbbR_BE6ZmlxQrklyeFaLyh-LO4gEpFTaB9MMg_suPcb9paCjLntIzu8WqPCa2sdZMPtMcr"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTE5LCJlbWFpbCI6ImdicnV3ZWlmZmF1a2lAeW9wbWFpbC5jb20iLCJuYW1lIjoiTWFuaXNoIiwiZGV2aWNlX3Rva2VuIjoiZkprc09BbDhSUHV4MUI1RzdaOUFVbzpBUEE5MWJHSUluc3BidWRXd2FsbmFqcW1pM2pLUlB0a0gyMjF4Y1FXRmF1clY5WFNLUF91ZnRYZHJKNW1FdV9MODZtYW90YmJSX0JFNlptbHhRcmtseWVGYUx5aC1MTzRnRXBGVGFCOU1NZ19zdVBjYjlwYUNqTG50SXp1OFdxUENhMnNkWk1QdE1jciIsImlhdCI6MTcxODk1NDQ0OH0.iTtQ5iFCw8bjvIIShGFhBamXywrvAU_-UCK1UDH7fT8"

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

/// id : 119
/// email : "mailto:gbruweiffauki@yopmail.com"
/// name : "Manish"
/// device_token : "fJksOAl8RPux1B5G7Z9AUo:APA91bGIInspbudWwalnajqmi3jKRPtkH221xcQWFaurV9XSKP_uftXdrJ5mEu_L86maotbbR_BE6ZmlxQrklyeFaLyh-LO4gEpFTaB9MMg_suPcb9paCjLntIzu8WqPCa2sdZMPtMcr"

class User {
  User({
      num? id, 
      String? email, 
      String? name, 
      String? deviceToken,}){
    _id = id;
    _email = email;
    _name = name;
    _deviceToken = deviceToken;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _email = json['email'];
    _name = json['name'];
    _deviceToken = json['device_token'];
  }
  num? _id;
  String? _email;
  String? _name;
  String? _deviceToken;
User copyWith({  num? id,
  String? email,
  String? name,
  String? deviceToken,
}) => User(  id: id ?? _id,
  email: email ?? _email,
  name: name ?? _name,
  deviceToken: deviceToken ?? _deviceToken,
);
  num? get id => _id;
  String? get email => _email;
  String? get name => _name;
  String? get deviceToken => _deviceToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['email'] = _email;
    map['name'] = _name;
    map['device_token'] = _deviceToken;
    return map;
  }

}