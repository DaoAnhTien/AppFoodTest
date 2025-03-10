// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meals_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MealsModelAdapter extends TypeAdapter<MealsModel> {
  @override
  final int typeId = 0;

  @override
  MealsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MealsModel(
      idMeal: fields[0] == null ? '' : fields[0] as String,
      strMeal: fields[1] == null ? '' : fields[1] as String,
      strMealThumb: fields[2] == null ? '' : fields[2] as String,
      strCategory: fields[3] == null ? '' : fields[3] as String,
      strArea: fields[4] == null ? '' : fields[4] as String,
      strInstructions: fields[5] == null ? '' : fields[5] as String,
      strTags: fields[6] == null ? '' : fields[6] as String,
      strYoutube: fields[7] == null ? '' : fields[7] as String,
      ingredients: fields[8] == null ? [] : (fields[8] as List).cast<String>(),
      measures: fields[9] == null ? [] : (fields[9] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, MealsModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.idMeal)
      ..writeByte(1)
      ..write(obj.strMeal)
      ..writeByte(2)
      ..write(obj.strMealThumb)
      ..writeByte(3)
      ..write(obj.strCategory)
      ..writeByte(4)
      ..write(obj.strArea)
      ..writeByte(5)
      ..write(obj.strInstructions)
      ..writeByte(6)
      ..write(obj.strTags)
      ..writeByte(7)
      ..write(obj.strYoutube)
      ..writeByte(8)
      ..write(obj.ingredients)
      ..writeByte(9)
      ..write(obj.measures);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealsModel _$MealsModelFromJson(Map<String, dynamic> json) => MealsModel(
      idMeal: json['idMeal'] as String? ?? '',
      strMeal: json['strMeal'] as String? ?? '',
      strMealThumb: json['strMealThumb'] as String? ?? '',
      strCategory: json['strCategory'] as String? ?? '',
      strArea: json['strArea'] as String? ?? '',
      strInstructions: json['strInstructions'] as String? ?? '',
      strTags: json['strTags'] as String? ?? '',
      strYoutube: json['strYoutube'] as String? ?? '',
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      measures: (json['measures'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$MealsModelToJson(MealsModel instance) =>
    <String, dynamic>{
      'idMeal': instance.idMeal,
      'strMeal': instance.strMeal,
      'strMealThumb': instance.strMealThumb,
      'strCategory': instance.strCategory,
      'strArea': instance.strArea,
      'strInstructions': instance.strInstructions,
      'strTags': instance.strTags,
      'strYoutube': instance.strYoutube,
      'ingredients': instance.ingredients,
      'measures': instance.measures,
    };
