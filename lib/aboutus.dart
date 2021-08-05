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
  double _contactHeight = 0;

  double  _loginwidth = 0;
  double  _loginopacity =1  ;
  double _loginHeight = 0;


  double _headingtop =100;
  double windowwidth = 0 ;
  double windowheight = 0;

 // bool _keyboardVisible = false;


  @override
  Widget build(BuildContext context) {
  windowheight =MediaQuery.of(context).size.height;
  windowwidth = MediaQuery.of(context).size.width;

  _loginHeight = windowheight - 270;
  _contactHeight  = windowheight - 270;


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

      //_loginHeight = _keyboardVisible ? windowheight : windowheight - 270;

      break;

      case 1:
        _bgcolor = Color(0xFF63AFBF);
        _headingcolor = Colors.black;

        _contactYoffset = windowheight;

        _headingtop = 90;
        //_loginHeight = _keyboardVisible ? windowheight : windowheight - 270;

         _loginopacity = 1;
        _loginwidth =windowwidth;
        _loginXoffset = 0;
        _loginYoffset = 270 ;
        break;
      case 2:
        _bgcolor = Color(0xFF63AFBF);
        _headingcolor = Colors.black;
        _headingtop = 80;


        _loginopacity =0.7;
        _loginwidth = windowwidth - 40;
        _loginYoffset = 200; //key
       // _loginHeight = _keyboardVisible ? windowheight : windowheight - 240;

        _loginXoffset = 20;
        _contactYoffset =  270;
      //  _contactHeight = _keyboardVisible ? windowheight : windowheight - 270;
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
                        curve:  Curves.fastLinearToSlowEaseIn,
                        duration: Duration(
                          milliseconds: 1000,
                        ),
                          margin:  EdgeInsets.only(
                              top :50),

                          child: Text('About Us' ,style: TextStyle(
                             color: _headingcolor ,

                            fontSize: 30

                          ),
                          ),
                      ),
                      AnimatedContainer(curve:  Curves.fastLinearToSlowEaseIn,
                        duration: Duration(
                          milliseconds: 1000,
                        ),
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Text('We are a Not for Profit trust venture building Wellness on wheels (The Tann Mann \'Gaadi\') to address the serious problem of open defecation which is a major health risk for all in developing countriesWe are in the mission of integrating technology with our social cause. We are in the process of providing a holistic approach to social responsibility keeping health, sensitization, safety and Eco-friendly solution',
                         textAlign: TextAlign.center,
                        style: TextStyle(
                        color: _headingcolor,
                        fontSize: 11,
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
                      child: Image( image: AssetImage('assets/images/image1.png',),
                          width: 200
                      )),
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
                    margin: EdgeInsets.all(30),
                    padding: EdgeInsets.all(15),
                    width:double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFE0902F),
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
        // GestureDetector(
        //   onTap: (){
        //     setState(() {
        //       _pageState=2;
        //     });
        //   },
          //child:
         AnimatedContainer(
            padding: EdgeInsets.all(32),
             width:   _loginwidth,
           height: _loginHeight,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    InputWithIcon(
                      icon: Icons.email,
                      hint: "Enter Email...",
                    ),
                    SizedBox(height: 20,),
                    InputWithIcon(
                      icon: Icons.vpn_key,
                      hint: "Enter Password...",
                    ),

                    SizedBox(
                      height: 140,
                    ),
                    Column(
                      children: [
                        PrimaryButton(
                          btnText: "Login",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _pageState = 2;
                            });
                          },
                          child: OutlineBtn(
                            btnText: "Contact Us",
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
           ),

        // GestureDetector(
        //   onTap: (){
        //     setState(() {
        //       _pageState=1;
        //     });
        //   },
          //child:
       AnimatedContainer(
    height: _contactHeight,
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
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ),

                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Image( image: AssetImage('assets/images/ins.png',),
                        width: 40
                              )
                              ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                child: Image( image: AssetImage('assets/images/fb.png',),
                                    width: 40
                                )
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                child: Image( image: AssetImage('assets/images/twi.png',),
                                   width: 40
                                )
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                child: Image( image: AssetImage('assets/images/lin.png',),
                                  width: 40
                                )
                            ),

                          ],
                        ),
                      )


                    // InputWithIcon(
                    //   icon: Icons.email,
                    //   hint: "Enter Email...",
                    // ),
                    // SizedBox(height: 20,),
                    // InputWithIcon(
                    //   icon: Icons.vpn_key,
                    //   hint: "Enter Password...",
                    // )
                  ],
                ),
                Column(

                  children: [
                   // PrimaryButton(btnText: "Contact Us"),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _pageState = 1;
                        });
                      },
                      child: OutlineBtn(
                        btnText: "Back To Login",
                      ),
                    )
                  ],
                ),
              ],
            ),
            
          ),

      ],
    );
  }
}



class InputWithIcon extends StatefulWidget {
  final IconData icon;
  final String hint;
  InputWithIcon({required this.icon, required this.hint});

  @override
  _InputWithIconState createState() => _InputWithIconState();
}

class _InputWithIconState extends State<InputWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Color(0xFFBC7C7C7),
              width: 2
          ),
          borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        children: <Widget>[
          Container(
              width: 60,
              child: Icon(
                widget.icon,
                size: 20,
                color: Color(0xFF63AFBF),
              )
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                  border: InputBorder.none,
                  hintText: widget.hint
              ),
            ),
          )
        ],
      ),
    );
  }
}


