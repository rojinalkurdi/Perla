class LoginModel {
  Data? data;

  LoginModel({this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  String? username;
  int? points;
  String? phone;
  String? imagePath;
  String? timestamp;
  String? userType;

  User(
      {this.id,
      this.username,
      this.points,
      this.phone,
      this.imagePath,
      this.timestamp,
      this.userType});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    points = json['points'];
    phone = json['phone'];
    imagePath = json['image_path'];
    timestamp = json['timestamp'];
    userType = json['user_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['points'] = this.points;
    data['phone'] = this.phone;
    data['image_path'] = this.imagePath;
    data['timestamp'] = this.timestamp;
    data['user_type'] = this.userType;
    return data;
  }
}