import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(

            child: Column(
              children: [
                Container(
                    margin:const EdgeInsets.only(
                        top :100),

                    child: Text('about us')),
                Text('what we do'),
              ],
            ),
          ),
          Container(
            child: Center(
                child: Text('desc')),
          ),
          Container(
            child: Center(
                child: Text('image')),
          ),

        ],
      ),

    );
  }
}
