import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double width;
  final double maginLeft;
  final double maginRight;
  final double maginBottom;
  final double maginTop;
  final double fontSize;
  final double borderRadius;
  final String textButtom;
  final Function onTap;

  const GradientButton({
    Key key,
    this.width,
    this.textButtom,
    @required this.onTap,
    this.borderRadius = 30,
    this.maginLeft = 40,
    this.maginRight = 40,
    this.maginBottom = 20,
    this.maginTop = 0,
    this.fontSize = 20,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin:
            EdgeInsets.fromLTRB(maginLeft, maginTop, maginRight, maginBottom),
        width: width,
        height: 50,
        decoration: BoxDecoration(
          // color: Color(0xffdd2476),
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffff5130),
              Color(0xffde2574),
            ],
          ),
        ),
        child: Center(
          child: Text(
            '$textButtom',
            style: TextStyle(color: Colors.white, fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
