import 'package:flutter/material.dart';
import 'pages/index_page.dart';
import 'constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor:  Colors.white,
          brightness: Brightness.light,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
          // tooltipTheme: TooltipThemeData(verticalOffset: -100000))
        ),
        home: IndexPage(),
      ),
    );
  }
}