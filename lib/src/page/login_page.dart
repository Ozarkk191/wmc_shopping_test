import 'package:flutter/material.dart';
import 'package:wmc_shopping_test/src/page/home_layout.dart';
import 'package:wmc_shopping_test/src/page/home_page.dart';
import 'package:wmc_shopping_test/src/widget/button/gradient_button.dart';
import 'package:wmc_shopping_test/src/widget/textfield/textfield_border_none.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var fullSizeWidth = MediaQuery.of(context).size.width;
    var fullSizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: fullSizeWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, fullSizeHeight * 0.15, 20, 50),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xffdd2476),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFieldBorderNone(
                width: fullSizeWidth,
                hintText: 'Mobilde no./Email',
              ),
              TextFieldBorderNone(
                width: fullSizeWidth,
                hintText: 'Password',
              ),
              Container(
                width: fullSizeWidth,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 20),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xffdd2476),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              GradientButton(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeLayout()));
                },
                textButtom: 'Login',
                width: fullSizeWidth,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Color(0xff8f8f8f),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xffdd2476),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 80)
            ],
          ),
        ),
      ),
    );
  }
}
