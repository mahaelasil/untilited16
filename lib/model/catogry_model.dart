// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

CatogryModel productFromJson(String str) => CatogryModel.fromJson(json.decode(str));

String productToJson(CatogryModel data) => json.encode(data.toJson());

class CatogryModel {
  final String image;
  final String id;
  final String name;
  final String price;
  final String description;
  final String status;
  bool isFavourite;
  CatogryModel({required this.price,
    required  this.description,
    required this.status,
    required this.image,
    required this.id,
    required this.name,
    required this.isFavourite,

  });

  factory CatogryModel.fromJson(Map<String, dynamic> json) => CatogryModel(
    id: json["id"],
    name: json["name"],
    description:json["description"],
    image:json["image"],
    isFavourite: false,
    price:json["price"],
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
