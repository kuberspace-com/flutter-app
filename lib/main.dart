import 'package:convrsy/page_wigits/create_account.dart';
import 'package:convrsy/page_wigits/forgot_password.dart';
import 'package:convrsy/page_wigits/login_page.dart';
import 'package:convrsy/page_wigits/signup_page.dart';
import 'package:convrsy/splashes/home_splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Convrsy',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(222, 239, 27, 1),
      ),
      home: const Splash(),
      routes: {
      '/login': (context) => const Login(),
      '/signup': (context) => const Signup(),
      '/create-account':(context) => const CreateAccount(),
      '/forgot-password':(context) => const ForgotPassword()

    },
    );
  }
}



