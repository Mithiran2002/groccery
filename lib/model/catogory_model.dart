import 'dart:convert';
// To parse this JSON data, do
//
//     final catogory = catogoryFromJson(jsonString);


Catogory catogoryFromJson(String str) => Catogory.fromJson(json.decode(str));

String catogoryToJson(Catogory data) => json.encode(data.toJson());

class Catogory {
    final int? id;
    final String? name;
    final List<String> ingredients;
    final List<String> instructions;
    final int? prepTimeMinutes;
    final int? cookTimeMinutes;
    final int ?servings;
    final String? difficulty;
    final String ?cuisine;
    final int? caloriesPerServing;
    final List<String> tags;
    final int? userId;
    final String ?image;
    final double? rating;
    final int? reviewCount;
    final List<String> mealType;

    Catogory({
        required this.id,
        required this.name,
        required this.ingredients,
        required this.instructions,
        required this.prepTimeMinutes,
        required this.cookTimeMinutes,
        required this.servings,
        required this.difficulty,
        required this.cuisine,
        required this.caloriesPerServing,
        required this.tags,
        required this.userId,
        required this.image,
        required this.rating,
        required this.reviewCount,
        required this.mealType,
    });

    factory Catogory.fromJson(Map<String, dynamic> json) => Catogory(
        id: json["id"],
        name: json["name"],
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        instructions: List<String>.from(json["instructions"].map((x) => x)),
        prepTimeMinutes: json["prepTimeMinutes"],
        cookTimeMinutes: json["cookTimeMinutes"],
        servings: json["servings"],
        difficulty: json["difficulty"],
        cuisine: json["cuisine"],
        caloriesPerServing: json["caloriesPerServing"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        userId: json["userId"],
        image: json["image"],
        rating: json["rating"]?.toDouble(),
        reviewCount: json["reviewCount"],
        mealType: List<String>.from(json["mealType"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
        "prepTimeMinutes": prepTimeMinutes,
        "cookTimeMinutes": cookTimeMinutes,
        "servings": servings,
        "difficulty": difficulty,
        "cuisine": cuisine,
        "caloriesPerServing": caloriesPerServing,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "userId": userId,
        "image": image,
        "rating": rating,
        "reviewCount": reviewCount,
        "mealType": List<dynamic>.from(mealType.map((x) => x)),
    };
}
