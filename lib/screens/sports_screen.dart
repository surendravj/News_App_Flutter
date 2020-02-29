import 'package:flutter/material.dart';
import 'package:news/screens/comman_screen.dart';
import 'package:news/util/constants.dart';

class SportsScreen extends StatefulWidget {
  @override
  _SportsScreenState createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonScreen(UserCategories.sports);
  }
}
