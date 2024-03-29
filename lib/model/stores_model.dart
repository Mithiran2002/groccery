import 'dart:convert';

class Stores {
    final int? id;
    final String? title;
    final String? description;
    final int? price;
    final double? discountPercentage;
    final double? rating;
    final int? stock;
    final String? brand;
    final String? category;
    final String? thumbnail;
    final List<String>? images;

    Stores({
        this.id,
        this.title,
        this.description,
        this.price,
        this.discountPercentage,
        this.rating,
        this.stock,
        this.brand,
        this.category,
        this.thumbnail,
        this.images,
    });

    factory Stores.fromRawJson(String str) => Stores.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Stores.fromJson(Map<String, dynamic> json) => Stores(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        discountPercentage: json["discountPercentage"]?.toDouble(),
        rating: json["rating"]?.toDouble(),
        stock: json["stock"],
        brand: json["brand"],
        category: json["category"],
        thumbnail: json["thumbnail"],
        images: json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "discountPercentage": discountPercentage,
        "rating": rating,
        "stock": stock,
        "brand": brand,
        "category": category,
        "thumbnail": thumbnail,
        "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
    };
}
