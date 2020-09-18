import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gidiyo/Components/rounded_button.dart';
import 'package:gidiyo/Screens/forgotPassword.dart';
import 'package:gidiyo/Screens/phone.dart';
import 'package:gidiyo/Screens/signup.dart';

class Login extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String _value="University E-mail";
  bool flag =false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Spacer(),
                  Container(
                      height: 90,
                      child: Image.asset('assets/images/LoginDots.png'))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
                child: Container(
                  height: 250,
                  child: new Stack(
                    children: <Widget>[
                      new Positioned(
                          child: Image.asset('assets/images/back.png')),
                      Center(
                          child:
                              Image.asset('assets/images/SmilingAttendant.png'))
                    ],
                  ),
                ),
              ),
              Container(

                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.only(left: 50, right: 50),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black, ))),
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/IconSchool.png',
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    DropdownButton(

                       // isExpanded: true,
                        //isDense: true,
                        icon: Icon(Icons.keyboard_arrow_down, size: 38,),
                        //iconEnabledColor: Colors.black,
                       // value: _value,
                        hint: Text('University'),
                        items: [
                          DropdownMenuItem(
                            child: Text('Amasya University'),
                            value: '@amasya.edu.tr',
                          ),
                          DropdownMenuItem(
                            child: Text('Bursa University'),
                            value: '@amasya.edu.tr',
                          ),
                          DropdownMenuItem(
                            child: Text('Ceyhan Technical University'),
                            value: '@amasya.edu.tr',
                          ),
                          DropdownMenuItem(
                            child: Text('Rize University'),
                            value: '@amasya.edu.tr',
                          ),
                          DropdownMenuItem(
                            child: Text('Istanbul Technical University'),
                            value: '@amasya.edu.tr',
                          ),
                          DropdownMenuItem(
                            child: Text('Middle East Technical University'),
                            value: '@amasya.edu.tr',
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                            flag=true;
                          });

                        }),
                  ],
                ),
              ),

             // alignHint(),
              Container(
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.only(left: 50, right: 50),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black, ))),
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/ios-school.png',
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                   Container(
                     height: 30,
                     width: 250,
                     child: TextField(


                       textAlign: TextAlign.start,
                       decoration: InputDecoration(
                         hintText: _value,


                       ),
                     ),
                   )

                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.only(left: 50, right: 50),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black, ))),
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/key.png',
                      height: 15,
                      width: 21,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Password'
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RoundedButton(
                    width: 130,
                    colour: Color(0xff3766FD),
                    title: 'Login',

                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RoundedButton(
                    width: 130,
                    colour: Color(0xff3766FD),
                    title: 'Register',
                    onPressed: (){
                      Navigator.pushNamed(context, SignUp.id);
                    },

                  ),
                ],
              ),

              InkWell(
                onTap: (){
                 Navigator.pushNamed(context, ForgotPass.id);
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 20,
                    decoration: TextDecoration.underline
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
