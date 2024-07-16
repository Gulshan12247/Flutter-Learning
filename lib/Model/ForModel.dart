/// success : true
/// status : 200
/// message : "Item and similar deals fetched successfully"
/// data : {"item":{"location":{"type":"Point","coordinates":[30.6973,76.6973]},"_id":"66619d22cb800d636479bc41","categoryId":"666194e19604da2132be7deb","productName":"Tea","productDescription":"Special Offer 40% off","title":"Tea","images":["http://217.196.48.113:5000/images/BJ86G5921HF1CHEKGFKC231B7K0F.webp","http://217.196.48.113:5000/images/93D2HF2G45CJKBKB6JK3F7K76BE3.jpeg"],"logo":"http://217.196.48.113:5000/logos/82659KF23J14G09BCEH0F3H9J4D2.jpeg","address":"Shimla","createdAt":"2024-06-06T11:27:30.355Z","updatedAt":"2024-06-06T11:27:30.355Z","__v":0,"image":"http://217.196.48.113:5000/images/BJ86G5921HF1CHEKGFKC231B7K0F.webp","distance":0.42},"similarDeals":[{"location":{"type":"Point","coordinates":[30.7094395,76.69522839999999]},"_id":"6683f5a8ad8eb6e039ce1183","categoryId":"666194e19604da2132be7deb","productName":"Testing","productDescription":"Testing","title":"Testing","logo":"http://217.196.48.113:5000/logos/CHD4EBG279KJ5C8GF983K1E70HDG.jpeg","address":"Mohali Tower, Phase 8B, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 140308, India","createdAt":"2024-07-02T12:42:16.520Z","updatedAt":"2024-07-02T12:42:16.520Z","__v":0,"image":"http://217.196.48.113:5000/images/95D79G802060DJ5K4BJ8J5E4E721.jpeg","distance":0.89},{"location":{"type":"Point","coordinates":[30.6961414,76.7158492]},"_id":"6661a2470acd063bf2875f66","categoryId":"666194e19604da2132be7deb","productName":"Coffee","productDescription":"Special Offer 20% off","title":"Starbucks","logo":"http://217.196.48.113:5000/logos/43JC8K381F463D3JHKGJGC8F0CD4.png","address":"Shimla","createdAt":"2024-06-06T11:49:27.944Z","updatedAt":"2024-06-06T11:49:27.944Z","__v":0,"image":"http://217.196.48.113:5000/images/64JF2FBH4DGKJE6H3010312D6826.jpeg","distance":1.53},{"location":{"type":"Point","coordinates":[30.7498676,76.64110939999999]},"_id":"666853ed6f7c6446c43c15f5","categoryId":"666194e19604da2132be7deb","productName":"cold coffe","productDescription":"cold coffe with vanila icecream","title":"starbuck","logo":"http://217.196.48.113:5000/logos/5893C0C3K82C802DJ6GFHDF57ED4.png","address":"Kharar, Punjab 140301, India","createdAt":"2024-06-11T13:41:01.586Z","updatedAt":"2024-06-11T13:41:01.586Z","__v":0,"image":"http://217.196.48.113:5000/images/BC27G890FKG0FKEG7CED47JHJE7F.png","distance":4.66},{"location":{"type":"Point","coordinates":[30.7320385,76.77263339999999]},"_id":"66840119123dbf4a07989076","categoryId":"666194e19604da2132be7deb","productName":"Fdfsdf","productDescription":"Testing","title":"Testing","logo":"http://217.196.48.113:5000/logos/1K0DEHD158321DBDCJH6K6KFH685.jpeg","address":"Sector 22, Chandigarh, India","createdAt":"2024-07-02T13:31:05.173Z","updatedAt":"2024-07-02T13:31:05.173Z","__v":0,"image":"http://217.196.48.113:5000/images/8JCKG5D383D75K2KGD6CB21HF6H7.jpeg","distance":5.45},{"location":{"type":"Point","coordinates":[30.6942091,76.860565]},"_id":"668401b8123dbf4a07989089","categoryId":"666194e19604da2132be7deb","productName":"Cdwc","productDescription":"Wdc","title":"Cedc","logo":"http://217.196.48.113:5000/logos/K125BG1E62B5FGCFGJ49G2BF751F.jpeg","address":"Panchkula, Haryana, India","createdAt":"2024-07-02T13:33:44.258Z","updatedAt":"2024-07-02T13:33:44.258Z","__v":0,"image":"http://217.196.48.113:5000/images/5GK1DJFC0JH032FC1E6140G19BE9.jpeg","distance":10.12},{"location":{"type":"Point","coordinates":[33.748752,-84.38768449999999]},"_id":"6683f626ad8eb6e039ce11dd","categoryId":"666194e19604da2132be7deb","productName":"Testing","productDescription":"Testing","title":"Testing","logo":"http://217.196.48.113:5000/logos/3DKH2D429247K2CD710G4BC9061D.jpeg","address":"Atlanta, GA, USA","createdAt":"2024-07-02T12:44:22.407Z","updatedAt":"2024-07-02T12:44:22.407Z","__v":0,"image":"http://217.196.48.113:5000/images/B5FEG1CH30810F3287BEH03J2G67.jpeg","distance":7816.21}],"userLocation":{"latitude":30.6973223,"longitude":76.6902}}

class ForModel {
  ForModel({
      bool? success, 
      num? status, 
      String? message, 
      Data? data,}){
    _success = success;
    _status = status;
    _message = message;
    _data = data;
}

  ForModel.fromJson(dynamic json) {
    _success = json['success'];
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  num? _status;
  String? _message;
  Data? _data;
ForModel copyWith({  bool? success,
  num? status,
  String? message,
  Data? data,
}) => ForModel(  success: success ?? _success,
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

/// item : {"location":{"type":"Point","coordinates":[30.6973,76.6973]},"_id":"66619d22cb800d636479bc41","categoryId":"666194e19604da2132be7deb","productName":"Tea","productDescription":"Special Offer 40% off","title":"Tea","images":["http://217.196.48.113:5000/images/BJ86G5921HF1CHEKGFKC231B7K0F.webp","http://217.196.48.113:5000/images/93D2HF2G45CJKBKB6JK3F7K76BE3.jpeg"],"logo":"http://217.196.48.113:5000/logos/82659KF23J14G09BCEH0F3H9J4D2.jpeg","address":"Shimla","createdAt":"2024-06-06T11:27:30.355Z","updatedAt":"2024-06-06T11:27:30.355Z","__v":0,"image":"http://217.196.48.113:5000/images/BJ86G5921HF1CHEKGFKC231B7K0F.webp","distance":0.42}
/// similarDeals : [{"location":{"type":"Point","coordinates":[30.7094395,76.69522839999999]},"_id":"6683f5a8ad8eb6e039ce1183","categoryId":"666194e19604da2132be7deb","productName":"Testing","productDescription":"Testing","title":"Testing","logo":"http://217.196.48.113:5000/logos/CHD4EBG279KJ5C8GF983K1E70HDG.jpeg","address":"Mohali Tower, Phase 8B, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 140308, India","createdAt":"2024-07-02T12:42:16.520Z","updatedAt":"2024-07-02T12:42:16.520Z","__v":0,"image":"http://217.196.48.113:5000/images/95D79G802060DJ5K4BJ8J5E4E721.jpeg","distance":0.89},{"location":{"type":"Point","coordinates":[30.6961414,76.7158492]},"_id":"6661a2470acd063bf2875f66","categoryId":"666194e19604da2132be7deb","productName":"Coffee","productDescription":"Special Offer 20% off","title":"Starbucks","logo":"http://217.196.48.113:5000/logos/43JC8K381F463D3JHKGJGC8F0CD4.png","address":"Shimla","createdAt":"2024-06-06T11:49:27.944Z","updatedAt":"2024-06-06T11:49:27.944Z","__v":0,"image":"http://217.196.48.113:5000/images/64JF2FBH4DGKJE6H3010312D6826.jpeg","distance":1.53},{"location":{"type":"Point","coordinates":[30.7498676,76.64110939999999]},"_id":"666853ed6f7c6446c43c15f5","categoryId":"666194e19604da2132be7deb","productName":"cold coffe","productDescription":"cold coffe with vanila icecream","title":"starbuck","logo":"http://217.196.48.113:5000/logos/5893C0C3K82C802DJ6GFHDF57ED4.png","address":"Kharar, Punjab 140301, India","createdAt":"2024-06-11T13:41:01.586Z","updatedAt":"2024-06-11T13:41:01.586Z","__v":0,"image":"http://217.196.48.113:5000/images/BC27G890FKG0FKEG7CED47JHJE7F.png","distance":4.66},{"location":{"type":"Point","coordinates":[30.7320385,76.77263339999999]},"_id":"66840119123dbf4a07989076","categoryId":"666194e19604da2132be7deb","productName":"Fdfsdf","productDescription":"Testing","title":"Testing","logo":"http://217.196.48.113:5000/logos/1K0DEHD158321DBDCJH6K6KFH685.jpeg","address":"Sector 22, Chandigarh, India","createdAt":"2024-07-02T13:31:05.173Z","updatedAt":"2024-07-02T13:31:05.173Z","__v":0,"image":"http://217.196.48.113:5000/images/8JCKG5D383D75K2KGD6CB21HF6H7.jpeg","distance":5.45},{"location":{"type":"Point","coordinates":[30.6942091,76.860565]},"_id":"668401b8123dbf4a07989089","categoryId":"666194e19604da2132be7deb","productName":"Cdwc","productDescription":"Wdc","title":"Cedc","logo":"http://217.196.48.113:5000/logos/K125BG1E62B5FGCFGJ49G2BF751F.jpeg","address":"Panchkula, Haryana, India","createdAt":"2024-07-02T13:33:44.258Z","updatedAt":"2024-07-02T13:33:44.258Z","__v":0,"image":"http://217.196.48.113:5000/images/5GK1DJFC0JH032FC1E6140G19BE9.jpeg","distance":10.12},{"location":{"type":"Point","coordinates":[33.748752,-84.38768449999999]},"_id":"6683f626ad8eb6e039ce11dd","categoryId":"666194e19604da2132be7deb","productName":"Testing","productDescription":"Testing","title":"Testing","logo":"http://217.196.48.113:5000/logos/3DKH2D429247K2CD710G4BC9061D.jpeg","address":"Atlanta, GA, USA","createdAt":"2024-07-02T12:44:22.407Z","updatedAt":"2024-07-02T12:44:22.407Z","__v":0,"image":"http://217.196.48.113:5000/images/B5FEG1CH30810F3287BEH03J2G67.jpeg","distance":7816.21}]
/// userLocation : {"latitude":30.6973223,"longitude":76.6902}

class Data {
  Data({
      Item? item, 
      List<SimilarDeals>? similarDeals, 
      UserLocation? userLocation,}){
    _item = item;
    _similarDeals = similarDeals;
    _userLocation = userLocation;
}

  Data.fromJson(dynamic json) {
    _item = json['item'] != null ? Item.fromJson(json['item']) : null;
    if (json['similarDeals'] != null) {
      _similarDeals = [];
      json['similarDeals'].forEach((v) {
        _similarDeals?.add(SimilarDeals.fromJson(v));
      });
    }
    _userLocation = json['userLocation'] != null ? UserLocation.fromJson(json['userLocation']) : null;
  }
  Item? _item;
  List<SimilarDeals>? _similarDeals;
  UserLocation? _userLocation;
Data copyWith({  Item? item,
  List<SimilarDeals>? similarDeals,
  UserLocation? userLocation,
}) => Data(  item: item ?? _item,
  similarDeals: similarDeals ?? _similarDeals,
  userLocation: userLocation ?? _userLocation,
);
  Item? get item => _item;
  List<SimilarDeals>? get similarDeals => _similarDeals;
  UserLocation? get userLocation => _userLocation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_item != null) {
      map['item'] = _item?.toJson();
    }
    if (_similarDeals != null) {
      map['similarDeals'] = _similarDeals?.map((v) => v.toJson()).toList();
    }
    if (_userLocation != null) {
      map['userLocation'] = _userLocation?.toJson();
    }
    return map;
  }

}

/// latitude : 30.6973223
/// longitude : 76.6902

class UserLocation {
  UserLocation({
      num? latitude, 
      num? longitude,}){
    _latitude = latitude;
    _longitude = longitude;
}

  UserLocation.fromJson(dynamic json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
  }
  num? _latitude;
  num? _longitude;
UserLocation copyWith({  num? latitude,
  num? longitude,
}) => UserLocation(  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
);
  num? get latitude => _latitude;
  num? get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    return map;
  }

}

/// location : {"type":"Point","coordinates":[30.7094395,76.69522839999999]}
/// _id : "6683f5a8ad8eb6e039ce1183"
/// categoryId : "666194e19604da2132be7deb"
/// productName : "Testing"
/// productDescription : "Testing"
/// title : "Testing"
/// logo : "http://217.196.48.113:5000/logos/CHD4EBG279KJ5C8GF983K1E70HDG.jpeg"
/// address : "Mohali Tower, Phase 8B, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 140308, India"
/// createdAt : "2024-07-02T12:42:16.520Z"
/// updatedAt : "2024-07-02T12:42:16.520Z"
/// __v : 0
/// image : "http://217.196.48.113:5000/images/95D79G802060DJ5K4BJ8J5E4E721.jpeg"
/// distance : 0.89

class SimilarDeals {
  SimilarDeals({
      Location? location, 
      String? id, 
      String? categoryId, 
      String? productName, 
      String? productDescription, 
      String? title, 
      String? logo, 
      String? address, 
      String? createdAt, 
      String? updatedAt, 
      num? v, 
      String? image, 
      num? distance,}){
    _location = location;
    _id = id;
    _categoryId = categoryId;
    _productName = productName;
    _productDescription = productDescription;
    _title = title;
    _logo = logo;
    _address = address;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
    _image = image;
    _distance = distance;
}

  SimilarDeals.fromJson(dynamic json) {
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _id = json['_id'];
    _categoryId = json['categoryId'];
    _productName = json['productName'];
    _productDescription = json['productDescription'];
    _title = json['title'];
    _logo = json['logo'];
    _address = json['address'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
    _image = json['image'];
    _distance = json['distance'];
  }
  Location? _location;
  String? _id;
  String? _categoryId;
  String? _productName;
  String? _productDescription;
  String? _title;
  String? _logo;
  String? _address;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
  String? _image;
  num? _distance;
SimilarDeals copyWith({  Location? location,
  String? id,
  String? categoryId,
  String? productName,
  String? productDescription,
  String? title,
  String? logo,
  String? address,
  String? createdAt,
  String? updatedAt,
  num? v,
  String? image,
  num? distance,
}) => SimilarDeals(  location: location ?? _location,
  id: id ?? _id,
  categoryId: categoryId ?? _categoryId,
  productName: productName ?? _productName,
  productDescription: productDescription ?? _productDescription,
  title: title ?? _title,
  logo: logo ?? _logo,
  address: address ?? _address,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
  image: image ?? _image,
  distance: distance ?? _distance,
);
  Location? get location => _location;
  String? get id => _id;
  String? get categoryId => _categoryId;
  String? get productName => _productName;
  String? get productDescription => _productDescription;
  String? get title => _title;
  String? get logo => _logo;
  String? get address => _address;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;
  String? get image => _image;
  num? get distance => _distance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['_id'] = _id;
    map['categoryId'] = _categoryId;
    map['productName'] = _productName;
    map['productDescription'] = _productDescription;
    map['title'] = _title;
    map['logo'] = _logo;
    map['address'] = _address;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    map['image'] = _image;
    map['distance'] = _distance;
    return map;
  }

}

/// type : "Point"
/// coordinates : [30.7094395,76.69522839999999]

class Location {
  Location({
      String? type, 
      List<num>? coordinates,}){
    _type = type;
    _coordinates = coordinates;
}

  Location.fromJson(dynamic json) {
    _type = json['type'];
    _coordinates = json['coordinates'] != null ? json['coordinates'].cast<num>() : [];
  }
  String? _type;
  List<num>? _coordinates;
Location copyWith({  String? type,
  List<num>? coordinates,
}) => Location(  type: type ?? _type,
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

/// location : {"type":"Point","coordinates":[30.6973,76.6973]}
/// _id : "66619d22cb800d636479bc41"
/// categoryId : "666194e19604da2132be7deb"
/// productName : "Tea"
/// productDescription : "Special Offer 40% off"
/// title : "Tea"
/// images : ["http://217.196.48.113:5000/images/BJ86G5921HF1CHEKGFKC231B7K0F.webp","http://217.196.48.113:5000/images/93D2HF2G45CJKBKB6JK3F7K76BE3.jpeg"]
/// logo : "http://217.196.48.113:5000/logos/82659KF23J14G09BCEH0F3H9J4D2.jpeg"
/// address : "Shimla"
/// createdAt : "2024-06-06T11:27:30.355Z"
/// updatedAt : "2024-06-06T11:27:30.355Z"
/// __v : 0
/// image : "http://217.196.48.113:5000/images/BJ86G5921HF1CHEKGFKC231B7K0F.webp"
/// distance : 0.42

class Item {
  Item({
      Location? location, 
      String? id, 
      String? categoryId, 
      String? productName, 
      String? productDescription, 
      String? title, 
      List<String>? images, 
      String? logo, 
      String? address, 
      String? createdAt, 
      String? updatedAt, 
      num? v, 
      String? image, 
      num? distance,}){
    _location = location;
    _id = id;
    _categoryId = categoryId;
    _productName = productName;
    _productDescription = productDescription;
    _title = title;
    _images = images;
    _logo = logo;
    _address = address;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
    _image = image;
    _distance = distance;
}

  Item.fromJson(dynamic json) {
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _id = json['_id'];
    _categoryId = json['categoryId'];
    _productName = json['productName'];
    _productDescription = json['productDescription'];
    _title = json['title'];
    _images = json['images'] != null ? json['images'].cast<String>() : [];
    _logo = json['logo'];
    _address = json['address'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
    _image = json['image'];
    _distance = json['distance'];
  }
  Location? _location;
  String? _id;
  String? _categoryId;
  String? _productName;
  String? _productDescription;
  String? _title;
  List<String>? _images;
  String? _logo;
  String? _address;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
  String? _image;
  num? _distance;
Item copyWith({  Location? location,
  String? id,
  String? categoryId,
  String? productName,
  String? productDescription,
  String? title,
  List<String>? images,
  String? logo,
  String? address,
  String? createdAt,
  String? updatedAt,
  num? v,
  String? image,
  num? distance,
}) => Item(  location: location ?? _location,
  id: id ?? _id,
  categoryId: categoryId ?? _categoryId,
  productName: productName ?? _productName,
  productDescription: productDescription ?? _productDescription,
  title: title ?? _title,
  images: images ?? _images,
  logo: logo ?? _logo,
  address: address ?? _address,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
  image: image ?? _image,
  distance: distance ?? _distance,
);
  Location? get location => _location;
  String? get id => _id;
  String? get categoryId => _categoryId;
  String? get productName => _productName;
  String? get productDescription => _productDescription;
  String? get title => _title;
  List<String>? get images => _images;
  String? get logo => _logo;
  String? get address => _address;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;
  String? get image => _image;
  num? get distance => _distance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['_id'] = _id;
    map['categoryId'] = _categoryId;
    map['productName'] = _productName;
    map['productDescription'] = _productDescription;
    map['title'] = _title;
    map['images'] = _images;
    map['logo'] = _logo;
    map['address'] = _address;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    map['image'] = _image;
    map['distance'] = _distance;
    return map;
  }

}
