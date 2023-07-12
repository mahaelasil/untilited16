// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

ProductModel productFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  final String image;
  final String id;
  final String name;
  final double price;
  final String description;
  final String status;
  bool isFavourite;
  ProductModel({required this.price,
    required  this.description,
    required this.status,
    required this.image,
    required this.id,
    required this.name,
    required this.isFavourite,

  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    name: json["name"],
    description:json["description"],
    image:json["image"],
    isFavourite: false,
    price:double.parse(json["price"].toString(),),
    status:json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "description":description,
    "isFavourite":isFavourite,
    "price":price,
    "status":status

  };
}

