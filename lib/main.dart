import 'package:flutter/material.dart';
import 'package:gidiyo/Screens/forgotPassword.dart';
import 'package:gidiyo/Screens/login.dart';
import 'package:gidiyo/Screens/phone.dart';
import 'package:gidiyo/Screens/signup.dart';
import 'package:gidiyo/Screens/verifyCode.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        initialRoute: Login.id,
        routes: {
          Login.id :(context)=>Login(),

          ForgotPass.id :(context)=>ForgotPass(),

          SignUp.id:(context)=> SignUp(),
          VerifyCode.id: (context)=> VerifyCode(),
          AddPhone.id :(context)=>AddPhone(),

        }

    );
  }
}

