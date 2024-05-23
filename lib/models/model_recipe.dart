// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RecipeModel {
  String? name;
  String? imageUrl;
  List<String>? ingredients;
  List<String>? steps;
  String? ytLink;

  String? category;
  String? description;
  String? cookingTime;
  RecipeModel(
      {required this.name,
      required this.imageUrl,
      required this.ingredients,
      required this.steps,
      required this.ytLink,
      required this.description,
      required this.cookingTime,
      required this.category});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'imageUrl': imageUrl,
      'ingredients': ingredients,
      'steps': steps,
      'ytLink': ytLink,
      'category': category,
      'description': description,
      'cookingTime': cookingTime,
    };
  }

   RecipeModel.fromMap(Map<String, dynamic> map){
    name = map['name'];
    imageUrl = map['imageUrl'];
    ingredients = List<String>.from(map['ingredients'] as List<dynamic>);
    steps= List<String>.from(map['steps'] as List<dynamic>);
      ytLink= map['ytLink'] as String;
      category= map['category'] as String;
      description= map['description'] as String;
      cookingTime= map['cookingTime'] as String;
   }


}
