import 'package:apptest_food/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryModel extends BaseModel {
  @JsonKey(defaultValue: '')
  final String idCategory;

  @JsonKey(defaultValue: "")
  final String strCategory;

  @JsonKey(defaultValue: "")
  final String strCategoryThumb;

  @JsonKey(defaultValue: "")
  final String strCategoryDescription;

  CategoryModel({
    this.idCategory = "",
    this.strCategory = "",
    this.strCategoryThumb = "",
    this.strCategoryDescription = "",
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
