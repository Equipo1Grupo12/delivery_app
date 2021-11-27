import 'package:flutter/material.dart';

class ButtonGoogle extends StatefulWidget {

  final String text;
  double width = 0.0;
  double height = 0.0;
  final VoidCallback onPressed;

  ButtonGoogle({required this.text, required this.onPressed, this.height = 0.0, this.width = 0.0});

  @override
  State createState() => _ButtonGoogle();
}

class _ButtonGoogle extends State<ButtonGoogle> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right: 20.0
        ),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.green
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Lato",
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
