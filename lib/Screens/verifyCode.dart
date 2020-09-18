import 'package:flutter/material.dart';
class VerifyCode extends StatefulWidget {
  static const String id = 'verifyCode_screen';
  @override
  _VerifyCodeState createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top:20.0, bottom: 10),
              child: Container(
                height: 250,
                child: new Stack(
                  children: <Widget>[
                    new Positioned(
                        child: Image.asset('assets/images/back.png')),
                    Center(
                        child:
                        Image.asset('assets/images/code.png'))
                  ],
                ),
              ),
            ),




          ],




        ),
        ),
      ),







    );
  }
}
