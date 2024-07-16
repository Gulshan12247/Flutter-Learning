/// success : true
/// status : 200
/// message : "User Created Successfully"
/// body : {"userLocation":{"type":"Point","coordinates":[-122.084,37.422]},"_id":"667bdde1c28eca3e830e2560","fullName":"Rahul","email":"ra@linkemon.com","phoneNumber":null,"password":"$2b$10$GKlk/EpgEtz8MYwwTdJvVecwV2cKfTGT8figYY3XAkw1AvbE1iIKu","isDeleted":false,"images":["http://89.116.49.11:8080/images/Cricket.jpeg"],"deviceToken":null,"dob":null,"bio":null,"deviceType":null,"role":1,"otp":null,"otp_verified":false,"loginTime":null,"gender":1,"radius":0,"isSubscription":false,"createdAt":"2024-06-26T09:22:41.078Z","updatedAt":"2024-06-26T09:22:41.078Z","__v":0,"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9pZCI6IjY2N2JkZGUxYzI4ZWNhM2U4MzBlMjU2MCIsImVtYWlsIjoicmFAbGlua2Vtb24uY29tIiwibG9naW5UaW1lIjoxNzE5MzkzNzYxfSwiaWF0IjoxNzE5MzkzNzYxLCJleHAiOjE3NTA5Mjk3NjF9.PEDsq-Ddh234w2r2U1D_ZgfF6ZTzB_lfizcDeRiPkAU"}

class SiqnImageModel {
  SiqnImageModel({
      bool? success, 
      num? status, 
      String? message, 
      Body? body,}){
    _success = success;
    _status = status;
    _message = message;
    _body = body;
}

  SiqnImageModel.fromJson(dynamic json) {
    _success = json['success'];
    _status = json['status'];
    _message = json['message'];
    _body = json['body'] != null ? Body.fromJson(json['body']) : null;
  }
  bool? _success;
  num? _status;
  String? _message;
  Body? _body;
SiqnImageModel copyWith({  bool? success,
  num? status,
  String? message,
  Body? body,
}) => SiqnImageModel(  success: success ?? _success,
  status: status ?? _status,
  message: message ?? _message,
  body: body ?? _body,
);
  bool? get success => _success;
  num? get status => _status;
  String? get message => _message;
  Body? get body => _body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['status'] = _status;
    map['message'] = _message;
    if (_body != null) {
      map['body'] = _body?.toJson();
    }
    return map;
  }

}

/// userLocation : {"type":"Point","coordinates":[-122.084,37.422]}
/// _id : "667bdde1c28eca3e830e2560"
/// fullName : "Rahul"
/// email : "ra@linkemon.com"
/// phoneNumber : null
/// password : "$2b$10$GKlk/EpgEtz8MYwwTdJvVecwV2cKfTGT8figYY3XAkw1AvbE1iIKu"
/// isDeleted : false
/// images : ["http://89.116.49.11:8080/images/Cricket.jpeg"]
/// deviceToken : null
/// dob : null
/// bio : null
/// deviceType : null
/// role : 1
/// otp : null
/// otp_verified : false
/// loginTime : null
/// gender : 1
/// radius : 0
/// isSubscription : false
/// createdAt : "2024-06-26T09:22:41.078Z"
/// updatedAt : "2024-06-26T09:22:41.078Z"
/// __v : 0
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9pZCI6IjY2N2JkZGUxYzI4ZWNhM2U4MzBlMjU2MCIsImVtYWlsIjoicmFAbGlua2Vtb24uY29tIiwibG9naW5UaW1lIjoxNzE5MzkzNzYxfSwiaWF0IjoxNzE5MzkzNzYxLCJleHAiOjE3NTA5Mjk3NjF9.PEDsq-Ddh234w2r2U1D_ZgfF6ZTzB_lfizcDeRiPkAU"

class Body {
  Body({
      UserLocation? userLocation, 
      String? id, 
      String? fullName, 
      String? email, 
      dynamic phoneNumber, 
      String? password, 
      bool? isDeleted, 
      List<String>? images, 
      dynamic deviceToken, 
      dynamic dob, 
      dynamic bio, 
      dynamic deviceType, 
      num? role, 
      dynamic otp, 
      bool? otpVerified, 
      dynamic loginTime, 
      num? gender, 
      num? radius, 
      bool? isSubscription, 
      String? createdAt, 
      String? updatedAt, 
      num? v, 
      String? token,}){
    _userLocation = userLocation;
    _id = id;
    _fullName = fullName;
    _email = email;
    _phoneNumber = phoneNumber;
    _password = password;
    _isDeleted = isDeleted;
    _images = images;
    _deviceToken = deviceToken;
    _dob = dob;
    _bio = bio;
    _deviceType = deviceType;
    _role = role;
    _otp = otp;
    _otpVerified = otpVerified;
    _loginTime = loginTime;
    _gender = gender;
    _radius = radius;
    _isSubscription = isSubscription;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
    _token = token;
}

  Body.fromJson(dynamic json) {
    _userLocation = json['userLocation'] != null ? UserLocation.fromJson(json['userLocation']) : null;
    _id = json['_id'];
    _fullName = json['fullName'];
    _email = json['email'];
    _phoneNumber = json['phoneNumber'];
    _password = json['password'];
    _isDeleted = json['isDeleted'];
    _images = json['images'] != null ? json['images'].cast<String>() : [];
    _deviceToken = json['deviceToken'];
    _dob = json['dob'];
    _bio = json['bio'];
    _deviceType = json['deviceType'];
    _role = json['role'];
    _otp = json['otp'];
    _otpVerified = json['otp_verified'];
    _loginTime = json['loginTime'];
    _gender = json['gender'];
    _radius = json['radius'];
    _isSubscription = json['isSubscription'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
    _token = json['token'];
  }
  UserLocation? _userLocation;
  String? _id;
  String? _fullName;
  String? _email;
  dynamic _phoneNumber;
  String? _password;
  bool? _isDeleted;
  List<String>? _images;
  dynamic _deviceToken;
  dynamic _dob;
  dynamic _bio;
  dynamic _deviceType;
  num? _role;
  dynamic _otp;
  bool? _otpVerified;
  dynamic _loginTime;
  num? _gender;
  num? _radius;
  bool? _isSubscription;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
  String? _token;
Body copyWith({  UserLocation? userLocation,
  String? id,
  String? fullName,
  String? email,
  dynamic phoneNumber,
  String? password,
  bool? isDeleted,
  List<String>? images,
  dynamic deviceToken,
  dynamic dob,
  dynamic bio,
  dynamic deviceType,
  num? role,
  dynamic otp,
  bool? otpVerified,
  dynamic loginTime,
  num? gender,
  num? radius,
  bool? isSubscription,
  String? createdAt,
  String? updatedAt,
  num? v,
  String? token,
}) => Body(  userLocation: userLocation ?? _userLocation,
  id: id ?? _id,
  fullName: fullName ?? _fullName,
  email: email ?? _email,
  phoneNumber: phoneNumber ?? _phoneNumber,
  password: password ?? _password,
  isDeleted: isDeleted ?? _isDeleted,
  images: images ?? _images,
  deviceToken: deviceToken ?? _deviceToken,
  dob: dob ?? _dob,
  bio: bio ?? _bio,
  deviceType: deviceType ?? _deviceType,
  role: role ?? _role,
  otp: otp ?? _otp,
  otpVerified: otpVerified ?? _otpVerified,
  loginTime: loginTime ?? _loginTime,
  gender: gender ?? _gender,
  radius: radius ?? _radius,
  isSubscription: isSubscription ?? _isSubscription,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
  token: token ?? _token,
);
  UserLocation? get userLocation => _userLocation;
  String? get id => _id;
  String? get fullName => _fullName;
  String? get email => _email;
  dynamic get phoneNumber => _phoneNumber;
  String? get password => _password;
  bool? get isDeleted => _isDeleted;
  List<String>? get images => _images;
  dynamic get deviceToken => _deviceToken;
  dynamic get dob => _dob;
  dynamic get bio => _bio;
  dynamic get deviceType => _deviceType;
  num? get role => _role;
  dynamic get otp => _otp;
  bool? get otpVerified => _otpVerified;
  dynamic get loginTime => _loginTime;
  num? get gender => _gender;
  num? get radius => _radius;
  bool? get isSubscription => _isSubscription;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_userLocation != null) {
      map['userLocation'] = _userLocation?.toJson();
    }
    map['_id'] = _id;
    map['fullName'] = _fullName;
    map['email'] = _email;
    map['phoneNumber'] = _phoneNumber;
    map['password'] = _password;
    map['isDeleted'] = _isDeleted;
    map['images'] = _images;
    map['deviceToken'] = _deviceToken;
    map['dob'] = _dob;
    map['bio'] = _bio;
    map['deviceType'] = _deviceType;
    map['role'] = _role;
    map['otp'] = _otp;
    map['otp_verified'] = _otpVerified;
    map['loginTime'] = _loginTime;
    map['gender'] = _gender;
    map['radius'] = _radius;
    map['isSubscription'] = _isSubscription;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    map['token'] = _token;
    return map;
  }

}

/// type : "Point"
/// coordinates : [-122.084,37.422]

class UserLocation {
  UserLocation({
      String? type, 
      List<num>? coordinates,}){
    _type = type;
    _coordinates = coordinates;
}

  UserLocation.fromJson(dynamic json) {
    _type = json['type'];
    _coordinates = json['coordinates'] != null ? json['coordinates'].cast<num>() : [];
  }
  String? _type;
  List<num>? _coordinates;
UserLocation copyWith({  String? type,
  List<num>? coordinates,
}) => UserLocation(  type: type ?? _type,
  coordinates: coordinates ?? _coordinates,
);
  String? get type => _type;
  List<num>? get coordinates => _coordinates;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['coordinates'] = _coordinates;
    return map;
  }

}