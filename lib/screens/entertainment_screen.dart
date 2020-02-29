import 'package:flutter/material.dart';
import 'package:news/util/constants.dart';

import 'comman_screen.dart';

class EntertainmentScreeen extends StatefulWidget {
  @override
  _EntertainmentScreeenState createState() => _EntertainmentScreeenState();
}

class _EntertainmentScreeenState extends State<EntertainmentScreeen> {
  @override
  Widget build(BuildContext context) {
    return CommonScreen(UserCategories.entertainment);
  }
}
