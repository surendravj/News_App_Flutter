import 'package:flutter/material.dart';
import 'comman_screen.dart';
import 'package:news/util/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonScreen(UserCategories.headLines);
  }
}
