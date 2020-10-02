import 'package:flutter/material.dart';
import 'package:loker/screen/detailScreen.dart';
// import 'package:flutter/services.dart';
import 'package:loker/screen/introScreen.dart';
import 'package:loker/screen/homeScreen.dart';
import 'package:loker/screen/searchScreen.dart';
import 'package:loker/screen/showAllScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    // ]);

    return MaterialApp(
        title: 'BABU',
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
        routes: <String, WidgetBuilder>{
          '/introScreen': (BuildContext context) => new IntroScreen(),
          '/homeScreen': (BuildContext context) => new HomeScreen(),
          '/detailScreen': (BuildContext context) => new DetailScreen(),
          '/searchScreen': (BuildContext context) => new SearchScreen(),
          '/showAllScreen': (BuildContext context) => new ShowAllScreen(),
        });
  }
}
