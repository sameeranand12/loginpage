import 'package:flutter/material.dart';
import 'aboutus.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;
  var _bgcolor  = Colors.white;
  var _headingcolor= Colors.black;

  double _loginXoffset = 0;
  double _loginYoffset = 0;
  double _contactYoffset = 0;

  double  _loginwidth = 0;
  double  _loginopacity =0;

  double _headingtop =100;
  double windowwidth = 0 ;
  double windowheight = 0;
  @override
  Widget build(BuildContext context) {
    windowheight =MediaQuery.of(context).size.height;
    windowwidth = MediaQuery.of(context).size.width;
    switch(_pageState){
      case 0 :
        _bgcolor = Colors.white;
        _headingcolor= Colors.black;
        _contactYoffset = windowheight;
        _headingtop =100;

        _loginopacity = 1;
        _loginwidth = windowwidth;
        _loginXoffset = 0;
        _loginYoffset = windowheight;
        break;

      case 1:
        _bgcolor = Colors.black;
        _headingcolor = Colors.white;
        _contactYoffset = windowheight;

        _headingtop = 90;

        _loginopacity = 1;
        _loginwidth =windowwidth;
        _loginXoffset = 0;
        _loginYoffset = 270 ;
        break;
      case 2:
        _bgcolor = Colors.black;
        _headingcolor = Colors.white;

        _headingtop = 80;


        _loginopacity =0.7;
        _loginwidth = windowwidth - 40;
        _loginYoffset = 200;
        _loginXoffset = 20;
        _contactYoffset = 270;
        break;
    }