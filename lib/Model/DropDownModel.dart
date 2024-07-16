/// statusCode : 200
/// status : "success"
/// message : "Successfully fetched categories"
/// data : [{"id":27,"title":"effee","image":"http://154.56.63.110:7000/uploads/1697630111528-Rectangle 2887.png"},{"id":26,"title":"effee","image":"http://154.56.63.110:7000/uploads/1697629920859-call.png"},{"id":25,"title":"cars","image":"http://154.56.63.110:7000/uploads/1696589092859-branding.png"},{"id":22,"title":"call","image":"http://154.56.63.110:7000/uploads/1695984145021-call.png"},{"id":15,"title":"tom hooland","image":"http://154.56.63.110:7000/uploads/1696580181789-Group 149.svg"},{"id":14,"title":"johny dip","image":"http://154.56.63.110:7000/uploads/1696589133523-branding.png"},{"id":13,"title":"snowa","image":""},{"id":12,"title":"gggw","image":""},{"id":11,"title":"makeup","image":""},{"id":9,"title":"hair","image":""}]
/// total : 10

class DropDownModel {
  DropDownModel({
      num? statusCode, 
      String? status, 
      String? message, 
      List<Data>? data, 
      num? total,}){
    _statusCode = statusCode;
    _status = status;
    _message = message;
    _data = data;
    _total = total;
}

  DropDownModel.fromJson(dynamic json) {
    _statusCode = json['statusCode'];
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _total = json['total'];
  }
  num? _statusCode;
  String? _status;
  String? _message;
  List<Data>? _data;
  num? _total;
DropDownModel copyWith({  num? statusCode,
  String? status,
  String? message,
  List<Data>? data,
  num? total,
}) => DropDownModel(  statusCode: statusCode ?? _statusCode,
  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
  total: total ?? _total,
);
  num? get statusCode => _statusCode;
  String? get status => _status;
  String? get message => _message;
  List<Data>? get data => _data;
  num? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusCode'] = _statusCode;
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['total'] = _total;
    return map;
  }

}

/// id : 27
/// title : "effee"
/// image : "http://154.56.63.110:7000/uploads/1697630111528-Rectangle 2887.png"

class Data {
  Data({
      num? id, 
      String? title, 
      String? image,}){
    _id = id;
    _title = title;
    _image = image;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _image = json['image'];
  }
  num? _id;
  String? _title;
  String? _image;
Data copyWith({  num? id,
  String? title,
  String? image,
}) => Data(  id: id ?? _id,
  title: title ?? _title,
  image: image ?? _image,
);
  num? get id => _id;
  String? get title => _title;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['image'] = _image;
    return map;
  }

}