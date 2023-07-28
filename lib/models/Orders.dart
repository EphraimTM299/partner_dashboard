// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Orders {
  String? address;
  String? laundromat;
  String? userName;
  DateTime? pickup;
  DateTime? delivery;
  String? status;
  double? cost;
  String? orderId;

  Orders();

  Orders.fromSnapshot(snapshot)
      : laundromat = snapshot.data()['laundromat'],
        pickup = snapshot.data()['pickup'].toDate(),
        delivery = snapshot.data()['delivery'].toDate(),
        address = snapshot.data()['address'],
        status = snapshot.data()['orderStatus'],
        cost = snapshot.data()["orderAmount"],
        orderId = snapshot.data()['orderId'],
        userName = snapshot.data()['userName'];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'laundromat': laundromat,
      'userName': userName,
      'pickup': pickup,
      'delivery': delivery,
    };
  }

  // factory Orders.fromMap(Map<String, dynamic> map) {
  //   return Orders(
  //       map['address'] as String,
  //       map['laundromat'] as String,
  //       map['userName'] as String,
  //       map['pickup'] as DateTime,
  //       map['delivery'] as DateTime);
  // }

  String toJson() => json.encode(toMap());

  // factory Orders.fromJson(String source) =>
  //     Orders.fromMap(json.decode(source) as Map<String, dynamic>);
}
