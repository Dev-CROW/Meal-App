import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class CategoryMealScreen extends StatefulWidget {
  static const routeName = '/meal_screen';
  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}



class _CategoryMealScreenState extends State<CategoryMealScreen> {
  String categorytitle;
  List<Meal> categoryMeals;
  @override
  void didChangeDependencies() {
    final routeArg =
    ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryid = routeArg['id'];
     categorytitle = routeArg['title'];
     categoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryid);
    }).toList();

    super.didChangeDependencies();
  }

  void _deleteMeal(String mealId){
    setState(() {
      categoryMeals.removeWhere((meal) => meal.id == mealId);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle),
      ),
      body: ListView.builder(itemBuilder: (ctx , index){
      return  MealItem(
        id:categoryMeals[index].id,
        imageUrl: categoryMeals[index].imageUrl,
      title: categoryMeals[index].title,
        duration: categoryMeals[index].duration,
        complexity: categoryMeals[index].complexity,
        affordability: categoryMeals[index].affordability,
        deleteItem: _deleteMeal,
      );
      },
      itemCount: categoryMeals.length,),
    );
  }
}
