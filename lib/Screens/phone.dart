import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gidiyo/Components/rounded_button.dart';

class AddPhone extends StatefulWidget {
  static const String id = 'addPhone_screen';
  @override
  _AddPhoneState createState() => _AddPhoneState();
}

class _AddPhoneState extends State<AddPhone> {
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
                          Image.asset('assets/images/phone.png'))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0 , right: 30, ),
                child: Text(
                  "Would you wanna share your phone number with drivers or passengers?",
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),

              Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "*It is not compulsory",
                      textAlign: TextAlign.start,
                      //overflow: TextOverflow.ellipsis,
                     // maxLines: 3,
                      style: TextStyle(
                          fontSize: 20,
                          //fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(left: 40, right: 40),
                //color: Colors.white70,
                decoration: BoxDecoration(
                   // border: Border(bottom: BorderSide(color: Colors.black, )
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70
                    ),

                child: Row(

                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/FlagTurkey.png',
                      height: 35,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      //color: Colors.grey,
                      height: 30,
                      width: 230,
                      child: TextField(
                        obscureText: true,

                        decoration: InputDecoration(
                            hintText: '+ (90) 555 678 2810',
                          hintStyle: TextStyle(
                            color: Colors.red
                          ),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icons/tick.png',
                      height: 35,
                      width: 20,
                    ),


                  ],
                ),
              ),
               SizedBox(
                 height: 20,
               ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RoundedButton(
                    width: 130,
                    colour: Color(0xff3F3D56),
                    title: 'No',

                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RoundedButton(
                    width: 130,
                    colour: Color(0xff3766FD),
                    title: 'Finish',
                    onPressed: (){
                      Navigator.pushNamed(context, AddPhone.id);
                    },

                  ),
                ],
              ),








            ],
          ),
        ),
      ),
    );
  }
}
