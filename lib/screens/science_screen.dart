import 'package:flutter/material.dart';
import 'package:news/screens/comman_screen.dart';
import 'package:news/util/constants.dart';

class ScienceScreen extends StatefulWidget {
  @override
  _ScienceScreenState createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonScreen(UserCategories.science);
  }
}
