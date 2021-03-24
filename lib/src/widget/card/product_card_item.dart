import 'package:flutter/material.dart';

class ProductCardItem extends StatelessWidget {
  final Function onTap;
  final String productPrice;
  final String productImg;
  final String productname;

  const ProductCardItem({
    Key key,
    @required this.onTap,
    @required this.productImg,
    @required this.productPrice,
    @required this.productname,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Container(
          margin: EdgeInsets.all(2.5),
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "$productImg",
                width: MediaQuery.of(context).size.width * 0.5,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 5),
              Text('$productname'),
              SizedBox(height: 10),
              Text('$productPrice'),
            ],
          ),
        ),
      ),
    );
  }
}
