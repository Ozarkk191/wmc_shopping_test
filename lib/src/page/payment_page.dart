import 'package:flutter/material.dart';
import 'package:wmc_shopping_test/src/widget/appbar/normal_appbar.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    var fullSizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Container(
          width: fullSizeWidth,
          child: Column(
            children: [
              NormalAppbar(
                title: 'Payment',
              ),
              Container(
                width: fullSizeWidth,
                height: 50,
                margin: EdgeInsets.all(10),
                child: Text(""),
              ),
              Container(
                width: fullSizeWidth,
                height: 60,
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Credit/DebitCard'),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: fullSizeWidth,
                height: 60,
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('QR Code'),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
