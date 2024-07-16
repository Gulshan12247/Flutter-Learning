/// statusCode : 200
/// status : "success"
/// message : "Successfully updated vendor"
/// data : {"id":"127","name":"Pankaj","email":"gajutrulisa-9378@yopmail.com","phone_number":"7559720841","address":"xyz","about":"Hi Customers","image":"http://154.56.63.110:7000/uploads/1719984590461-digital_camera_photo-1080x675.jpg"}

class UpdateModel {
  UpdateModel({
      num? statusCode, 
      String? status, 
      String? message, 
      Data? data,}){
    _statusCode = statusCode;
    _status = status;
    _message = message;
    _data = data;
}

  UpdateModel.fromJson(dynamic json) {
    _statusCode = json['statusCode'];
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _statusCode;
  String? _status;
  String? _message;
  Data? _data;
UpdateModel copyWith({  num? statusCode,
  String? status,
  String? message,
  Data? data,
}) => UpdateModel(  statusCode: statusCode ?? _statusCode,
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

/// id : "127"
/// name : "Pankaj"
/// email : "gajutrulisa-9378@yopmail.com"
/// phone_number : "7559720841"
/// address : "xyz"
/// about : "Hi Customers"
/// image : "http://154.56.63.110:7000/uploads/1719984590461-digital_camera_photo-1080x675.jpg"

class Data {
  Data({
      String? id, 
      String? name, 
      String? email, 
      String? phoneNumber, 
      String? address, 
      String? about, 
      String? image,}){
    _id = id;
    _name = name;
    _email = email;
    _phoneNumber = phoneNumber;
    _address = address;
    _about = about;
    _image = image;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _phoneNumber = json['phone_number'];
    _address = json['address'];
    _about = json['about'];
    _image = json['image'];
  }
  String? _id;
  String? _name;
  String? _email;
  String? _phoneNumber;
  String? _address;
  String? _about;
  String? _image;
Data copyWith({  String? id,
  String? name,
  String? email,
  String? phoneNumber,
  String? address,
  String? about,
  String? image,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  email: email ?? _email,
  phoneNumber: phoneNumber ?? _phoneNumber,
  address: address ?? _address,
  about: about ?? _about,
  image: image ?? _image,
);
  String? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get phoneNumber => _phoneNumber;
  String? get address => _address;
  String? get about => _about;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['phone_number'] = _phoneNumber;
    map['address'] = _address;
    map['about'] = _about;
    map['image'] = _image;
    return map;
  }

}