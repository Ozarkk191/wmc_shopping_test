import 'package:flutter/material.dart';
import 'package:wmc_shopping_test/src/page/cart_page.dart';
import 'package:wmc_shopping_test/src/widget/button/gradient_button.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    var fullSizeWidth = MediaQuery.of(context).size.width;
    var fullSizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: fullSizeWidth,
              child: Column(
                children: [
                  _header(fullSizeWidth, fullSizeHeight, context),
                  Container(
                    width: fullSizeWidth,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Macbook Pro',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'วันนี้ 23:00 น.',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Text(
                          '45,800.-',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: fullSizeWidth,
                    height: 1,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    color: Colors.grey,
                  ),
                  Container(
                    width: fullSizeWidth,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                        'ชิพ Apple M1 พร้อม CPU แบบ 8-core, GPU แบบ 8-core และ Neural Engine แบบ 16-coreหน่วยความจำแบบรวม ขนาด 8GBตัวจัดเก็บข้อมูลแบบ SSD ความจุ 256GB¹จอภาพ Retina ขนาด 13 นิ้ว พร้อมการแสดงผลแบบ True ToneMagic KeyboardTouch Bar และ Touch IDแทร็คแพด Force Touchพอร์ต Thunderbolt / USB 4 จำนวน 2 พอร์ต'),
                  ),
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
                  GradientButton(
                    onTap: () {},
                    width: fullSizeWidth * 0.4,
                    maginLeft: 0,
                    maginRight: 0,
                    maginTop: 0,
                    maginBottom: 0,
                    borderRadius: 10,
                    textButtom: 'เพิ่มในรถเข็น',
                    fontSize: 16,
                  ),
                  Container(
                    width: 1,
                    height: 50,
                    color: Colors.grey,
                  ),
                  GradientButton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage()));
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

  Container _header(
      double fullSizeWidth, double fullSizeHeight, BuildContext context) {
    return Container(
      width: fullSizeWidth,
      height: fullSizeHeight * 0.4,
      child: Stack(
        children: [
          Image.network(
            'https://inwfile.com/s-dy/if7paq.jpg',
            height: fullSizeHeight * 0.4,
            fit: BoxFit.cover,
          ),
          Container(
            width: fullSizeWidth,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Color(0xff000000).withOpacity(1.0),
                  Color(0xff000000).withOpacity(0.05),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffd36961).withOpacity(0.8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
