// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:store_responsive_dashboard/models/services.dart';

class Products {
  final String item_name;
  final String image;
  final List<Services> services;

  final String? special_offers;

  Products(this.item_name, this.image, this.special_offers, this.services);

  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> tempServices =
        services.map((service) => service.toMap()).toList();
    return <String, dynamic>{
      'item_name': item_name,
      'image': image,
      'special_offers': special_offers,
      'services': tempServices
    };
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    List<Services> tempServices =
        List<Map<String, dynamic>>.from(map['services'])
            .map((service) => Services.fromMap(service as Map<String, dynamic>))
            .toList();

    return Products(
      map['item_name'] as String,
      map['image'] as String,
      map['special_offers'] != null ? map['special_offers'] as String : null,
      tempServices,
    );
  }

  String toJson() => json.encode(toMap());

  factory Products.fromJson(String source) =>
      Products.fromMap(json.decode(source) as Map<String, dynamic>);
}
