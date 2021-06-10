import 'package:flutter/material.dart';
import 'category_screen.dart';
import 'favorites_screen.dart';
import '../widgets/MainDrawer.dart';
class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final  List <Map<String , Object>>_pages=[
    {
      'page':CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page':FavoritesScreen(),
      'title':'Your Favorites'
    },
  ];


  int _selectedPageIndex= 0;

  void _selectPage(int value) {
    setState(() {
      _selectedPageIndex = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_selectedPageIndex]['title']),),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage ,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category) ,title: Text("Categories") ),
          BottomNavigationBarItem(icon: Icon(Icons.star) ,title: Text("Favorites") )
        ],
      ),
      drawer: MainDrawer(),
    );
  }


}
