import 'package:flutter/material.dart';
import 'package:realestate/ui/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'RobotoSlab',
          primarySwatch: Colors.purple,
        ),
        home: HomeScreen(),
        routes: {
          'details': (ctx) => DetailsScreen(),
        });
  }
}
