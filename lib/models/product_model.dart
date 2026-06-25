import 'dart:convert';

class ProductModel {
  // inisialisasai variable data
  final String name;
  final String description;
  final int price;
  final String image;

  // contructor
  ProductModel({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  // Object -> Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'image': image,
    };
  }

  // Map -> Object
  factory ProductModel.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProductModel(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toInt() ?? 0,
      image: map['image']?? '',
    );
  }

  // Object -> Json String
  String toJson() => jsonEncode(toMap());

  // Json String -> Object
  factory ProductModel.fromJson(String source) {
    return ProductModel.fromMap(
      jsonDecode(source),
    );
  }
}