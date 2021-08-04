import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'outline.dart';


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
        _bgcolor = Color(0xFF63AFBF);
        _headingcolor = Colors.black;
        _contactYoffset = windowheight;

        _headingtop = 90;

         _loginopacity = 1;
        _loginwidth =windowwidth;
        _loginXoffset = 0;
        _loginYoffset = 270 ;
        break;
      case 2:
        _bgcolor = Colors.teal.shade600;
        _headingcolor = Colors.black;
        _headingtop = 80;


        _loginopacity =0.7;
        _loginwidth = windowwidth - 40;
        _loginYoffset = 200;
        _loginXoffset = 20;
        _contactYoffset = 270;
        break;
    }
    return Stack(
      children: [
        AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(
            milliseconds: 1000,
          ),
          color: _bgcolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    _pageState = 0;
                  });
    },
                child: Container(
                  child: Column(
                    children: [
                      AnimatedContainer(
                        duration: Duration(
                          milliseconds: 1000,
                        ),
                          margin:  EdgeInsets.only(
                              top :_headingtop),

                          child: Text('About Us' ,style: TextStyle(
                             color: _headingcolor ,

                            fontSize: 30

                          ),
                          ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Text('We are a Not for Profit trust venture building Wellness on wheels (The Tann Mann \'Gaadi\') to address the serious problem of open defecation which is a major health risk for all in developing countriesWe are in the mission of integrating technology with our social cause. We are in the process of providing a holistic approach to social responsibility keeping health, sensitization, safety and Eco-friendly solution',
                         textAlign: TextAlign.center,
                        style: TextStyle(
                        color: _headingcolor,
                        fontSize: 16,
        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:32 ),
                  child: Center(
                      child: Image.asset("assets/images/image1.png"),),
                ),
              ),
              Container(
                child:  GestureDetector(
                  onTap: (){
                    setState(() {
                      if(_pageState != 0){
                        _pageState=0;
                      }else{
                        _pageState = 1;
                      }
                      print('ccf');
                    });

                  },
                  child: Container(
                    margin: EdgeInsets.all(32),
                    padding: EdgeInsets.all(20),
                    width:double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffE0902F),
                      borderRadius: BorderRadiusDirectional.circular(50),
                    ),
                    child: Center(
                        child: Text('Login' ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),),
                    ),


                  ),
                )
              ),

            ],
          ),

        ),
        GestureDetector(
          onTap: (){
            setState(() {
              _pageState=2;
            });
          },
          child: AnimatedContainer(
            padding: EdgeInsets.all(32),
             width:   _loginwidth,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(
                milliseconds: 1000,
              ),
            transform: Matrix4.translationValues(_loginXoffset, _loginYoffset, 1),
           decoration: BoxDecoration(
             color: Colors.white.withOpacity(_loginopacity) ,
             borderRadius: BorderRadius.only(
             topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
             )
           ),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom :20),
                      child: Text(
                        "Login to Continue",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    InputWithIcon(),
                    Column(
                      children: [
                        PrimaryButton(
                          btnText: "Login",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        OutlineBtn(
                            btnText: "Contact Us"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
           ),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              _pageState=1;
            });
          },
          child: AnimatedContainer(
            padding: EdgeInsets.all(32),
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(
                milliseconds: 1000,
              ),
              transform: Matrix4.translationValues(0, _contactYoffset, 1),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
              ),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom :20),
                      child: Text(
                        "Happy to have you",
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                    )
                  ],
                ),
                Column(

                  children: [
                    PrimaryButton(btnText: "Contact Us"),
                    SizedBox(
                      height: 20,
                    ),
                    OutlineBtn(
                        btnText: "Back to Login "),
                  ],
                ),
              ],
            ),
            
          ),
        ),
      ],
    );
  }
}



class InputWithIcon extends StatefulWidget {
  const InputWithIcon({Key? key}) : super(key: key);

  @override
  _InputWithIconState createState() => _InputWithIconState();
}

class _InputWithIconState extends State<InputWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        border: Border.all(
            color: Color(0xffBC7C7C7),
            width: 2
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            child: Icon(
              Icons.email,
              size: 20,
              color: Colors.teal.shade600,
            ),
          ),
          Container(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                    hintText: "Enter Email.."
                ),
              ))
        ],
      ),
    );
  }
}