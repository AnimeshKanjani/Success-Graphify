import 'package:success_graphify/homePage.dart';
import 'package:success_graphify/screens/compare_users.dart';
import 'package:success_graphify/screens/last_10_contests.dart';
import 'package:success_graphify/screens/single_user.dart';
import 'package:success_graphify/utilities/constants.dart';
import 'package:success_graphify/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //forced portrait mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Success Graphify',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: MyRoute.homeRoute, //initial route
      routes: {
        "/": (context) => HomePage(), //default route
        MyRoute.homeRoute: (context) => HomePage(), //homepage
        MyRoute.singleUserInputPage: (context) => SingleUserInputPage(),
        MyRoute.compareUsersInputPage: (context) => CompareUsersInputPage(),
        MyRoute.last10Contests: (context) => Last10ContestsAnalysis(),
      },
    );
  }
}
