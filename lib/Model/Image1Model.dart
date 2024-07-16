/// success : true
/// status : 200
/// message : "CategoryList get successfully"
/// body : [{"_id":"66755320dfee2d5f5e3d773a","name":"Bowling","images":"https://limitless-cricket.s3.eu-north-1.amazonaws.com/images/1389B1JF956B5BK8J2J3C75JHE4G.png","userType":0,"createdAt":"2024-06-21T10:17:04.020Z","updatedAt":"2024-06-21T10:17:04.020Z","__v":0},{"_id":"667551e6dfee2d5f5e3d76ea","name":"Batting","images":"https://limitless-cricket.s3.amazonaws.com/images/31G08F9159FCKE0C3EB0739D9B4K.png","userType":0,"createdAt":"2024-06-21T10:11:50.751Z","updatedAt":"2024-06-21T10:11:50.751Z","__v":0}]

class Image1Model {
  Image1Model({
      bool? success, 
      num? status, 
      String? message, 
      List<Body>? body,}){
    _success = success;
    _status = status;
    _message = message;
    _body = body;
}

  Image1Model.fromJson(dynamic json) {
    _success = json['success'];
    _status = json['status'];
    _message = json['message'];
    if (json['body'] != null) {
      _body = [];
      json['body'].forEach((v) {
        _body?.add(Body.fromJson(v));
      });
    }
  }
  bool? _success;
  num? _status;
  String? _message;
  List<Body>? _body;

  get length => null;

  get articles  => null;

Image1Model copyWith({  bool? success,
  num? status,
  String? message,
  List<Body>? body,
}) => Image1Model(  success: success ?? _success,
  status: status ?? _status,
  message: message ?? _message,
  body: body ?? _body,
);
  bool? get success => _success;
  num? get status => _status;
  String? get message => _message;
  List<Body>? get body => _body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['status'] = _status;
    map['message'] = _message;
    if (_body != null) {
      map['body'] = _body?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// _id : "66755320dfee2d5f5e3d773a"
/// name : "Bowling"
/// images : "https://limitless-cricket.s3.eu-north-1.amazonaws.com/images/1389B1JF956B5BK8J2J3C75JHE4G.png"
/// userType : 0
/// createdAt : "2024-06-21T10:17:04.020Z"
/// updatedAt : "2024-06-21T10:17:04.020Z"
/// __v : 0

class Body {
  Body({
      String? id, 
      String? name, 
      String? images, 
      num? userType, 
      String? createdAt, 
      String? updatedAt, 
      num? v,}){
    _id = id;
    _name = name;
    _images = images;
    _userType = userType;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  Body.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _images = json['images'];
    _userType = json['userType'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _id;
  String? _name;
  String? _images;
  num? _userType;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
Body copyWith({  String? id,
  String? name,
  String? images,
  num? userType,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => Body(  id: id ?? _id,
  name: name ?? _name,
  images: images ?? _images,
  userType: userType ?? _userType,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
  String? get id => _id;
  String? get name => _name;
  String? get images => _images;
  num? get userType => _userType;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    map['images'] = _images;
    map['userType'] = _userType;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}