import 'package:flutter/material.dart';
import 'modules/ccategory_meal_screen.dart';
import 'modules/filters_screen.dart';
import 'modules/meal_detailscreen.dart';
import 'modules/taps_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.blueGrey,
        canvasColor: Color.fromRGBO(0, 0, 0, 0.4),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
              bodyText2: TextStyle(
                fontSize: 15,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.w300,
              ),
              headline4: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
              headline5: TextStyle(
                fontSize: 13,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
        appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  // ignore: deprecated_member_use
                  title: TextStyle(color: Colors.white),
                )),
      ),
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      // home: MyHomePage(),
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealScreen.routeName: (context) => CategoryMealScreen(),
        MealDeatailScreen.routeName: (context) => MealDeatailScreen(),
        FiltersScreen.routeName:(context)=> FiltersScreen(),
      },
    );
  }
}
