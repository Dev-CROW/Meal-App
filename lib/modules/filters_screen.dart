import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/MainDrawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filter_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Filters"),
        ),
        body: Center(
          child: Text("Filters!"),
        ),
    drawer: MainDrawer(),
    );
  }
}
