import 'package:hive/hive.dart';
import 'package:apptest_food/data/models/meals_model.dart';
import 'package:apptest_food/constants/config_constant.dart';

class MealsDB {
  // Lấy tất cả các meal từ Hive box
  List<MealsModel> getMeals() {
    final boxMeals = Hive.box<MealsModel>(BOX_MEALS);
    return boxMeals.values.toList();
  }

  Stream<List<MealsModel>> watchMeals() {
    final boxMeals = Hive.box<MealsModel>(BOX_MEALS);
    return boxMeals.watch().map((event) {
      return boxMeals.values.toList();
    });
  }

  Future<void> saveMeals(List<MealsModel> mealsModel) async {
    final boxMeals = Hive.box<MealsModel>(BOX_MEALS);
    await boxMeals.clear();
    for (var meal in mealsModel) {
      await boxMeals.add(meal);
    }
  }

  Future<MealsModel> save(MealsModel mealsModel) async {
    final boxMeals = Hive.box<MealsModel>(BOX_MEALS);
    await boxMeals.put(mealsModel.idMeal, mealsModel);
    return boxMeals.get(mealsModel.idMeal)!;
  }

  Future<void> deleteMeal(String idMeal) async {
    final boxMeals = Hive.box<MealsModel>(BOX_MEALS);
    await boxMeals.delete(idMeal);
  }

  Future<void> clear() async {
    final boxMeals = Hive.box<MealsModel>(BOX_MEALS);
    await boxMeals.clear();
  }
}
