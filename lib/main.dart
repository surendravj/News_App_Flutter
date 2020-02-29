import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:news/errors/errors.dart';
import 'package:news/providers/newsList_model.dart';
import 'package:news/screens/navigation_screen.dart';
import 'package:news/screens/news_details_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isInternetConnected = true;

  checkInternetConectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      setState(() {
        isInternetConnected = true;
      });
      return;
    }
    setState(() {
      isInternetConnected = false;
    });
  }

  @override
  initState() {
    super.initState();
    checkInternetConectivity();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: NewsList(),
          )
        ],
        child: MaterialApp(
            title: 'DailyNews',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              accentColor: Colors.lightBlue,
            ),
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (ctx) =>
                  isInternetConnected ? NavigationScreen() : NoInternet(),
              NewsDetails.routeName: (ctx) => NewsDetails(),
            }));
  }
}
