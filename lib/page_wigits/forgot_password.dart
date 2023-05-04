import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> login = GlobalKey<FormState>();

    return  Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height, 
        child: Column(children: const [
          Text("forgot password")
        ]
    )
      )
    );
  }
}