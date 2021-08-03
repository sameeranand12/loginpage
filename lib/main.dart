import 'package:flutter/material.dart';
import 'aboutus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
theme: ThemeData(
  fontFamily: "Nunito"

),
      debugShowCheckedModeBanner: false,
       home:Scaffold(
       body: Container(
         child: LoginPage(),
       ),
       ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
