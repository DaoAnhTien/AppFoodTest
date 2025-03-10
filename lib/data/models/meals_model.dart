import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'base_model.dart';

part 'meals_model.g.dart';

@HiveType(typeId: 0)
@JsonSerializable(explicitToJson: true)
class MealsModel extends HiveObject {
  @HiveField(0, defaultValue: '')
  @JsonKey(defaultValue: '')
  final String idMeal;

  @HiveField(1, defaultValue: '')
  @JsonKey(defaultValue: "")
  final String strMeal;

  @HiveField(2, defaultValue: '')
  @JsonKey(defaultValue: "")
  final String strMealThumb;

  @HiveField(3, defaultValue: '')
  @JsonKey(defaultValue: "")
  final String strCategory;

  @HiveField(4, defaultValue: '')
  @JsonKey(defaultValue: "")
  final String strArea;

  @HiveField(5, defaultValue: '')
  @JsonKey(defaultValue: "")
  final String strInstructions;

  @HiveField(6, defaultValue: '')
  @JsonKey(defaultValue: "")
  final String strTags;

  @HiveField(7, defaultValue: '')
  @JsonKey(defaultValue: "")
  final String strYoutube;

  @HiveField(8, defaultValue: [])
  @JsonKey(defaultValue: [])
  final List<String> ingredients;

  @HiveField(9, defaultValue: [])
  @JsonKey(defaultValue: [])
  final List<String> measures;

  @JsonKey(defaultValue: false)
  RxBool fav;

  MealsModel({
    this.idMeal = "",
    this.strMeal = "",
    this.strMealThumb = "",
    this.strCategory = "",
    this.strArea = "",
    this.strInstructions = "",
    this.strTags = "",
    this.strYoutube = "",
    this.ingredients = const [],
    this.measures = const [],
    bool? fav, // Accepting null or a value to initialize fav
  }) : fav = (fav ?? false).obs; // Initialize fav with a default value if null

  // Factory method for deserialization
  factory MealsModel.fromJson(Map<String, dynamic> json) {
    List<String> ingredients = [];
    List<String> measures = [];

    for (int i = 1; i <= 20; i++) {
      String ingredientKey = 'strIngredient$i';
      String measureKey = 'strMeasure$i';

      if (json[ingredientKey] != null && json[ingredientKey] != "") {
        ingredients.add(json[ingredientKey] ?? "");
        measures.add(json[measureKey] ?? "");
      }
    }

    return _$MealsModelFromJson(json).copyWith(
      ingredients: ingredients,
      measures: measures,
    );
  }

  // Method for serialization
  Map<String, dynamic> toJson() => _$MealsModelToJson(this);

  // Optional: You can add a copyWith method if you need to update some fields
  MealsModel copyWith({
    String? idMeal,
    String? strMeal,
    String? strMealThumb,
    String? strCategory,
    String? strArea,
    String? strInstructions,
    String? strTags,
    String? strYoutube,
    List<String>? ingredients,
    List<String>? measures,
    bool? fav,
  }) {
    return MealsModel(
      idMeal: idMeal ?? this.idMeal,
      strMeal: strMeal ?? this.strMeal,
      strMealThumb: strMealThumb ?? this.strMealThumb,
      strCategory: strCategory ?? this.strCategory,
      strArea: strArea ?? this.strArea,
      strInstructions: strInstructions ?? this.strInstructions,
      strTags: strTags ?? this.strTags,
      strYoutube: strYoutube ?? this.strYoutube,
      ingredients: ingredients ?? this.ingredients,
      measures: measures ?? this.measures,
      fav: fav ?? this.fav.value, // Ensure you pass a boolean if needed
    );
  }
}
