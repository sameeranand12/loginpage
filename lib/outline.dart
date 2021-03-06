import 'package:flutter/material.dart';

class OutlineBtn extends StatefulWidget {
  final String btnText;
  OutlineBtn({ required this.btnText});

  @override
  _OutlineBtnState createState() => _OutlineBtnState();
}

class _OutlineBtnState extends State<OutlineBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey,
              width: 2
          ),
          borderRadius: BorderRadius.circular(30)
      ),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Text(
          widget.btnText,
          style: TextStyle(
              color: Colors.black,
              fontSize: 15
          ),
        ),
      ),
    );
  }
}
