import 'package:flutter/material.dart';
import 'package:gidiyo/Components/rounded_button.dart';
import 'package:gidiyo/Components/LabeledCheckbox.dart';
import 'package:gidiyo/Screens/verifyCode.dart';

class SignUp extends StatefulWidget {
  static const String id = 'signUp_screen';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool _agre=false;
  String _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Center(
                  child: Text(
                    'Hi new comer!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 200,
                  child: new Stack(
                    children: <Widget>[
                      new Positioned(
                          child: Image.asset('assets/images/back.png')),
                      Center(child: Image.asset('assets/images/signup.png'))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 290,
                      child: Text(

                        'FULL NAME',style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 290,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Isabel Dunk'
                        ),
                      ),
                    )
                  ],
                ),
              ),
               SizedBox(
                 height: 10,
               ),
              Container(
                 child: Column(

                   children: <Widget>[
                     Container(
                       height: 15,
                       width: 290,
                       child: Text(

                         'UNIVERSITY',style: TextStyle(
                           color: Colors.grey.shade700,
                           fontSize: 14,
                           fontWeight: FontWeight.w700
                       ),
                       ),
                     ),

                     Container(
                       height: 35,
                       width: 290,
                       decoration: BoxDecoration(
                           border: Border(bottom: BorderSide(color: Colors.black, ))),
                       child: DropdownButton(


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
                               //flag=true;
                             });

                           }),
                     ),




                   ],
                 ),

               ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(

                  children: <Widget>[
                    Container(
                      height: 15,
                      width: 290,
                      child: Text(

                        'CAMPUS',style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                      ),
                      ),
                    ),

                    Container(
                      height: 35,
                      width: 290,
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.black, ))),
                      child: DropdownButton(


                        // isExpanded: true,
                        //isDense: true,
                          icon: Icon(Icons.keyboard_arrow_down, size: 38,),
                          //iconEnabledColor: Colors.black,
                          // value: _value,
                          hint: Text('Main Campus'),
                          items: [
                            DropdownMenuItem(
                              child: Text('Main Campus'),
                              value: 'main campus',
                            ),
                            DropdownMenuItem(
                              child: Text('Sub Campus'),
                              value: 'sub campus',
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
                              //flag=true;
                            });

                          }),
                    ),




                  ],
                ),

              ),




              SizedBox(
                height: 10,
              ),

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 290,
                      child: Text(

                        'UNIVERSITY E-MAIL',style: TextStyle(
                        color: Colors.grey.shade700,
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                      ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 290,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Isabella    @itu.edu.tr'
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 290,
                      child: Text(


                        'PASSWORD',style: TextStyle(
                        color: Colors.grey.shade700,
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                      ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 290,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Isabel Dunk'
                        ),
                      ),
                    )
                  ],
                ),
              ),




              Container(
                margin:EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
                height: 50,
                width: 350,
               decoration: BoxDecoration(
                 color: Color(0xffE3E3E4),
                 borderRadius: BorderRadius.circular(35)
               ),

                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Profile Picture',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600

                            ),

                          ),
                          Text(
                            'Not Compulsory',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),

                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: RoundedButton(
                        colour: Colors.black,
                        title: 'Choose',
                        width: 20,
                      ),
                    )
                  ],
                ),
              ),

              LabeledCheckbox(
                label: 'I have read user agreement and agreed.',
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                value: _agre,
                onChanged: (bool newValue) {
                  setState(() {
                    _agre = newValue;
                  });
                },
              ),


              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, VerifyCode.id);
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 30,
                    fontWeight: FontWeight.w700

                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),





            ],
          ),
        ),
      ),
    );
  }
}



