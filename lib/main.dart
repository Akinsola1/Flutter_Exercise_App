import 'package:excersise_app/constants/constant.dart';
import 'package:excersise_app/widget/base_screen.dart';
import 'package:excersise_app/screens/home_page.dart';
import 'package:excersise_app/widget/control_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: Kbackgroundcolor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: KTextcolor),
      ),
      home: const base_screen(),
    );
  }
}
