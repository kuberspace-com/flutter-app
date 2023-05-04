import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> login = GlobalKey<FormState>();

    return  Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height, 
        child: Column(children: const [
          Text("data")
        ]
    )
      )
    );
  }
}