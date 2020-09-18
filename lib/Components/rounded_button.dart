import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  RoundedButton({this.title,this.colour,this.onPressed, this.width});
  final Color colour;
  final String title;
  final Function onPressed;
  final double width;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          //height: 10,
          minWidth: width,
          //height: 10.0,

          child: Text(
            title,
            style: TextStyle(color: Colors.white,
            fontSize: 17),

          ),
        ),
      ),
    );
  }
}
