import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:wmc_shopping_test/src/page/payment_page.dart';
import 'package:wmc_shopping_test/src/widget/appbar/normal_appbar.dart';
import 'package:wmc_shopping_test/src/widget/button/gradient_button.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    var fullSizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: fullSizeWidth,
              child: Column(
                children: [
                  NormalAppbar(
                    title: 'Cart',
                  ),
                  SizedBox(height: 10),
                  _address(fullSizeWidth),
                  SizedBox(height: 10),
                  _cartItem(fullSizeWidth)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: fullSizeWidth,
              height: 100,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: fullSizeWidth * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ค่าจัดส่ง : 0.00',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          'ยอดรวม : 45,800.00',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 50,
                    color: Colors.grey,
                  ),
                  GradientButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPage()));
                    },
                    width: fullSizeWidth * 0.4,
                    borderRadius: 10,
                    textButtom: 'ซื้อสินค้า',
                    maginLeft: 0,
                    maginRight: 0,
                    maginTop: 0,
                    maginBottom: 0,
                    fontSize: 16,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _cartItem(double fullSizeWidth) {
    return Container(
      width: fullSizeWidth,
      height: 180,
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    color: Colors.grey),
              ),
              SizedBox(
                width: 5,
              ),
              Text('storename'),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            child: Row(
              children: [
                Image.network(
                  'https://inwfile.com/s-dy/if7paq.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Macbook Pro',
                        style: TextStyle(fontSize: 16),
                      ),
                      Expanded(child: Container(child: Text('detail'))),
                      Text(
                        '45,800.-',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  padding: EdgeInsets.all(1),
                  color: Colors.orange,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (num > 0) {
                            num--;
                            setState(() {});
                          }
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              '-',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        child: Center(
                          child: Text(
                            '$num',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          num++;
                          setState(() {});
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              '+',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _address(double fullSizeWidth) {
    return Container(
      width: fullSizeWidth,
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ที่อยู่สำหรับจัดส่ง',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'รังสิมา',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          Text(
            '1115 ถนนพระราม 3',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          Text(
            'แขวงช่องนนทรี เขตยานนาวา',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          Text(
            'กรุงเทพ 10120 10310',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
