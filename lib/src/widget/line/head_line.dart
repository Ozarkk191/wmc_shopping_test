import 'package:flutter/material.dart';

class HeadLine extends StatelessWidget {
  final String text;

  const HeadLine({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$text',
            style: TextStyle(
                color: Color(0xffdd2476),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          SizedBox(height: 5),
          Container(
            height: 1,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
