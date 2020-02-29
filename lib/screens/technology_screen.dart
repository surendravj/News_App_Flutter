import 'package:flutter/material.dart';
import 'package:news/screens/comman_screen.dart';
import 'package:news/util/constants.dart';

class TechnologyScreen extends StatefulWidget {
  @override
  _TechnologyScreenState createState() => _TechnologyScreenState();
}

class _TechnologyScreenState extends State<TechnologyScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonScreen(UserCategories.technology);
  }
}
