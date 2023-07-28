// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  String uid;
  String firstName;
  String phoneNumber;
  String address;
  String laundromatName;
  String? email;
  Timestamp accountCreated;
  String role;

  MyUser(
      {required this.firstName,
      required this.role,
      required this.phoneNumber,
      required this.address,
      required this.email,
      required this.uid,
      required this.laundromatName,
      required this.accountCreated});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'Name': firstName,
      'Phone': phoneNumber,
      'Location': address,
      'Email': email,
      'AccountCreated': accountCreated,
      'role': role,
      'LaundromatName': laundromatName,
    };
  }

  factory MyUser.fromMap(Map<String, dynamic> map) {
    return MyUser(
      uid: map['uid'] as String,
      firstName: map['Name'] as String,
      phoneNumber: map['Phone'] as String,
      laundromatName: map['LaundromatName'] as String,
      address: map['Location'] as String,
      email: map['Email'] != null ? map['Email'] as String : null,
      accountCreated: map['AccountCreated'] as Timestamp,
      role: map['role'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyUser.fromJson(String source) =>
      MyUser.fromMap(json.decode(source) as Map<String, dynamic>);
}
