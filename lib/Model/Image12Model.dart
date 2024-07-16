/// success : true
/// status : 200
/// message : "User profile fetched successfully"
/// data : {"user":{"userLocation":{"type":"Point","coordinates":[76.6902271,30.6974152]},"_id":"6686461e80c391e9c4cd685b","fullName":"Aman","email":"Aman@gmail.com","phoneNumber":null,"password":"$2b$10$KN5Hd/aBQDemJGEDH0.zdOk83/BQPVRLTQQd0Kw6E.eFmFSy8VBi6","isDeleted":false,"images":["http://89.116.49.11:8080/images/scaled_pexels-freestockpro-1172064.jpg","http://89.116.49.11:8080/images/scaled_pexels-packermann-1666021.jpg","http://89.116.49.11:8080/images/scaled_pexels-souvenirpixels-1598073.jpg"],"profileimage":"http://89.116.49.11:8080/profileimage/pexels-souvenirpixels-1598073.jpg","deviceToken":null,"dob":"04/07/2002","bio":"Delevery man","deviceType":null,"role":1,"otp":null,"otp_verified":false,"loginTime":"1720075807","gender":1,"radius":0,"isSubscription":false,"createdAt":"2024-07-04T06:50:06.884Z","updatedAt":"2024-07-04T07:39:14.770Z","__v":0},"distance":0.6456118012184413,"locationstatus":0}

class Image12Model {
  Image12Model({
      bool? success, 
      num? status, 
      String? message, 
      Data? data,}){
    _success = success;
    _status = status;
    _message = message;
    _data = data;
}

  Image12Model.fromJson(dynamic json) {
    _success = json['success'];
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  num? _status;
  String? _message;
  Data? _data;
Image12Model copyWith({  bool? success,
  num? status,
  String? message,
  Data? data,
}) => Image12Model(  success: success ?? _success,
  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get success => _success;
  num? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// user : {"userLocation":{"type":"Point","coordinates":[76.6902271,30.6974152]},"_id":"6686461e80c391e9c4cd685b","fullName":"Aman","email":"Aman@gmail.com","phoneNumber":null,"password":"$2b$10$KN5Hd/aBQDemJGEDH0.zdOk83/BQPVRLTQQd0Kw6E.eFmFSy8VBi6","isDeleted":false,"images":["http://89.116.49.11:8080/images/scaled_pexels-freestockpro-1172064.jpg","http://89.116.49.11:8080/images/scaled_pexels-packermann-1666021.jpg","http://89.116.49.11:8080/images/scaled_pexels-souvenirpixels-1598073.jpg"],"profileimage":"http://89.116.49.11:8080/profileimage/pexels-souvenirpixels-1598073.jpg","deviceToken":null,"dob":"04/07/2002","bio":"Delevery man","deviceType":null,"role":1,"otp":null,"otp_verified":false,"loginTime":"1720075807","gender":1,"radius":0,"isSubscription":false,"createdAt":"2024-07-04T06:50:06.884Z","updatedAt":"2024-07-04T07:39:14.770Z","__v":0}
/// distance : 0.6456118012184413
/// locationstatus : 0

class Data {
  Data({
      User? user, 
      num? distance, 
      num? locationstatus,}){
    _user = user;
    _distance = distance;
    _locationstatus = locationstatus;
}

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _distance = json['distance'];
    _locationstatus = json['locationstatus'];
  }
  User? _user;
  num? _distance;
  num? _locationstatus;
Data copyWith({  User? user,
  num? distance,
  num? locationstatus,
}) => Data(  user: user ?? _user,
  distance: distance ?? _distance,
  locationstatus: locationstatus ?? _locationstatus,
);
  User? get user => _user;
  num? get distance => _distance;
  num? get locationstatus => _locationstatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['distance'] = _distance;
    map['locationstatus'] = _locationstatus;
    return map;
  }

}

/// userLocation : {"type":"Point","coordinates":[76.6902271,30.6974152]}
/// _id : "6686461e80c391e9c4cd685b"
/// fullName : "Aman"
/// email : "Aman@gmail.com"
/// phoneNumber : null
/// password : "$2b$10$KN5Hd/aBQDemJGEDH0.zdOk83/BQPVRLTQQd0Kw6E.eFmFSy8VBi6"
/// isDeleted : false
/// images : ["http://89.116.49.11:8080/images/scaled_pexels-freestockpro-1172064.jpg","http://89.116.49.11:8080/images/scaled_pexels-packermann-1666021.jpg","http://89.116.49.11:8080/images/scaled_pexels-souvenirpixels-1598073.jpg"]
/// profileimage : "http://89.116.49.11:8080/profileimage/pexels-souvenirpixels-1598073.jpg"
/// deviceToken : null
/// dob : "04/07/2002"
/// bio : "Delevery man"
/// deviceType : null
/// role : 1
/// otp : null
/// otp_verified : false
/// loginTime : "1720075807"
/// gender : 1
/// radius : 0
/// isSubscription : false
/// createdAt : "2024-07-04T06:50:06.884Z"
/// updatedAt : "2024-07-04T07:39:14.770Z"
/// __v : 0

class User {
  User({
      UserLocation? userLocation, 
      String? id, 
      String? fullName, 
      String? email, 
      dynamic phoneNumber, 
      String? password, 
      bool? isDeleted, 
      List<String>? images, 
      String? profileimage, 
      dynamic deviceToken, 
      String? dob, 
      String? bio, 
      dynamic deviceType, 
      num? role, 
      dynamic otp, 
      bool? otpVerified, 
      String? loginTime, 
      num? gender, 
      num? radius, 
      bool? isSubscription, 
      String? createdAt, 
      String? updatedAt, 
      num? v,}){
    _userLocation = userLocation;
    _id = id;
    _fullName = fullName;
    _email = email;
    _phoneNumber = phoneNumber;
    _password = password;
    _isDeleted = isDeleted;
    _images = images;
    _profileimage = profileimage;
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
}

  User.fromJson(dynamic json) {
    _userLocation = json['userLocation'] != null ? UserLocation.fromJson(json['userLocation']) : null;
    _id = json['_id'];
    _fullName = json['fullName'];
    _email = json['email'];
    _phoneNumber = json['phoneNumber'];
    _password = json['password'];
    _isDeleted = json['isDeleted'];
    _images = json['images'] != null ? json['images'].cast<String>() : [];
    _profileimage = json['profileimage'];
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
  }
  UserLocation? _userLocation;
  String? _id;
  String? _fullName;
  String? _email;
  dynamic _phoneNumber;
  String? _password;
  bool? _isDeleted;
  List<String>? _images;
  String? _profileimage;
  dynamic _deviceToken;
  String? _dob;
  String? _bio;
  dynamic _deviceType;
  num? _role;
  dynamic _otp;
  bool? _otpVerified;
  String? _loginTime;
  num? _gender;
  num? _radius;
  bool? _isSubscription;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
User copyWith({  UserLocation? userLocation,
  String? id,
  String? fullName,
  String? email,
  dynamic phoneNumber,
  String? password,
  bool? isDeleted,
  List<String>? images,
  String? profileimage,
  dynamic deviceToken,
  String? dob,
  String? bio,
  dynamic deviceType,
  num? role,
  dynamic otp,
  bool? otpVerified,
  String? loginTime,
  num? gender,
  num? radius,
  bool? isSubscription,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => User(  userLocation: userLocation ?? _userLocation,
  id: id ?? _id,
  fullName: fullName ?? _fullName,
  email: email ?? _email,
  phoneNumber: phoneNumber ?? _phoneNumber,
  password: password ?? _password,
  isDeleted: isDeleted ?? _isDeleted,
  images: images ?? _images,
  profileimage: profileimage ?? _profileimage,
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
);
  UserLocation? get userLocation => _userLocation;
  String? get id => _id;
  String? get fullName => _fullName;
  String? get email => _email;
  dynamic get phoneNumber => _phoneNumber;
  String? get password => _password;
  bool? get isDeleted => _isDeleted;
  List<String>? get images => _images;
  String? get profileimage => _profileimage;
  dynamic get deviceToken => _deviceToken;
  String? get dob => _dob;
  String? get bio => _bio;
  dynamic get deviceType => _deviceType;
  num? get role => _role;
  dynamic get otp => _otp;
  bool? get otpVerified => _otpVerified;
  String? get loginTime => _loginTime;
  num? get gender => _gender;
  num? get radius => _radius;
  bool? get isSubscription => _isSubscription;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

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
    map['profileimage'] = _profileimage;
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
    return map;
  }

}

/// type : "Point"
/// coordinates : [76.6902271,30.6974152]

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