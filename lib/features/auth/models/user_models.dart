import 'dart:convert';

class UserModel {
  final String uid;
  final String fullName;
  final String phone;
  final String email;
  final String password;
  final String address;
  final String country;
  final String city;
  final String state;
  UserModel({
    required this.uid,
    required this.fullName,
    required this.phone,
    required this.email,
    required this.password,
    required this.address,
    required this.country,
    required this.city,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'fullName': fullName,
      'phone': phone,
      'email': email,
      'password': password,
      'address': address,
      'country': country,
      'city': city,
      'state': state,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      fullName: map['fullName'] ?? '',
      phone: map['phone'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      address: map['address'] ?? '',
      country: map['country'] ?? '',
      city: map['city'] ?? '',
      state: map['state'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
