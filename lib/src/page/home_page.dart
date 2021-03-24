import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:wmc_shopping_test/src/page/product_detail.dart';
import 'package:wmc_shopping_test/src/widget/card/product_card_item.dart';
import 'package:wmc_shopping_test/src/widget/line/head_line.dart';
import 'package:wmc_shopping_test/src/widget/textfield/search_field.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var fullSizeWidth = MediaQuery.of(context).size.width;
    var fullSizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          width: fullSizeWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _headerUI(fullSizeWidth, fullSizeHeight),
              SizedBox(height: 5),
              HeadLine(
                text: 'Categories',
              ),
              Container(
                width: fullSizeWidth,
                height: 200,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                child: Center(
                  child: Swiper(
                    outer: false,
                    itemBuilder: (c, i) {
                      return Wrap(
                        runSpacing: 4.0,
                        children: [
                          "มือถือแท็บเล็ต",
                          "สุขภาพความงาม",
                          "เครื่องแต่งกาย",
                          "เครื่องประดับ",
                          "แม่และเด็ก",
                          "บ้านและสวน",
                          "กีฬา",
                          "ยานยนต์"
                        ].map((i) {
                          return SizedBox(
                            width: MediaQuery.of(context).size.width / 5,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(
                                  child: Container(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.width * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    "$i",
                                    style: TextStyle(fontSize: 8),
                                  ),
                                )
                              ],
                            ),
                          );
                        }).toList(),
                      );
                    },
                    pagination: SwiperPagination(margin: EdgeInsets.all(4.0)),
                    itemCount: 4,
                  ),
                ),
              ),
              HeadLine(
                text: 'Reccommend',
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: GridView.count(
                  childAspectRatio: (0.9),
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: List.generate(10, (index) {
                    return ProductCardItem(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail()));
                      },
                      productImg: 'https://inwfile.com/s-dy/if7paq.jpg',
                      productname: 'Macbook Pro',
                      productPrice: '45,800',
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _headerUI(double fullSizeWidth, double fullSizeHeight) {
    return Container(
      width: fullSizeWidth,
      height: fullSizeHeight * 0.4,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xffff5130),
                        Color(0xffde2574),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
          SafeArea(
            child: Column(
              children: [
                SearchField(),
                Expanded(
                  child: Container(
                    width: fullSizeWidth,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Card(
                      elevation: 5,
                      clipBehavior: Clip.hardEdge,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: fullSizeWidth,
                        child: Image.network(
                          'https://image.freepik.com/free-vector/colorful-gradient-sale-background_23-2148829907.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
