import 'package:flutter/material.dart';
import '../modules/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildlisttile(String title, IconData icon,Function tapHandler) {
    return ListTile(
        leading: Icon(
          icon,
          size: 26,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        ),
    onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).accentColor,
            width: double.infinity,
            height: 120,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildlisttile("Meal", Icons.restaurant,()=> Navigator.of(context).pushReplacementNamed('/')),
          buildlisttile("filters", Icons.settings,()=> Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName)),
        ],
      ),
    );
  }
}
