import 'package:flutter/material.dart';
import 'package:gidiyo/Components/rounded_button.dart';

class ForgotPass extends StatefulWidget {
  static const String id = 'forgotPass_screen';
  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
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
                  //height: 0,
                  child: new Stack(
                    children: <Widget>[
                      new Positioned(
                          child: Image.asset('assets/images/back.png')),
                      Center(
                          child:
                          Image.asset('assets/images/password.png'))
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Did you forget your password? Don't worry just write your University Emial down. We will send you a temporary password.",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),

              /*Container(
                height: 30,
                width: 300,

                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade400,
                    hintText: 'University E-mail'
                  ),
                ),
              )*/

              Container(
                margin:EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
                height: 45,
                width: 350,
                child: Center(
                  child: TextField(
                    autocorrect: false,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: 'University E-mail',
                      hintStyle: TextStyle(
                        fontSize: 20,
                        textBaseline: TextBaseline.alphabetic,
                        fontWeight: FontWeight.w700
                      ),
                      filled: true,
                      fillColor: Color(0xffE3E3E4),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Color(0xffE3E3E4)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Color(0xffE3E3E4)),
                      ),
                    ),
                  ),
                ),
              ),
              RoundedButton(
                title: 'Send',
                width: 123,
                colour: Color(0xff3766FD),
              )

            ],
          ),
        ),
      ),



    );
  }
}
