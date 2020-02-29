import 'package:flutter/material.dart';
import 'entertainment_screen.dart';
import 'science_screen.dart';
import 'sports_screen.dart';
import 'technology_screen.dart';
import 'home_screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreen createState() => _NavigationScreen();
}

class _NavigationScreen extends State<NavigationScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
            title: Text('SmallNews'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.desktop_mac),
                  child: FittedBox(
                    child: Text('Tech')
                  )
                ),
                Tab(
                  icon: Icon(Icons.language),
                  child: FittedBox(
                    child: Text('Science')
                  )),
                Tab(
                  icon: Icon(Icons.motorcycle),
                  child: FittedBox(
                    child: Text('Sports')
                  )
                ),
                Tab(
                  icon: Icon(Icons.movie),
                  child: FittedBox(
                    child: Text('Movies'),
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              HomeScreen(),
              TechnologyScreen(),
              ScienceScreen(),
              SportsScreen(),
              EntertainmentScreeen()
            ],
          )),
    );
  }
}
