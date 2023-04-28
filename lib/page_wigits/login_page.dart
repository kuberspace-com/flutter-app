import 'package:flutter/material.dart';

import '../utility_wigits/wide_round_btn.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> login = GlobalKey<FormState>();

    return  Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height, 
        child: Column(children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox( 
              width: MediaQuery.of(context).size.width,
              height: 230,
              child: 
                const Image(
                  fit: BoxFit.cover,
                  image: AssetImage('./assets/temp-home-page-background.jpg')
                )
              )
          ),
        Center(child: Form(key: login, child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child:  SizedBox( 
                width: MediaQuery.of(context).size.width * 0.80,
                height: 50.0,
                child: WideRoundedButton(
                  child: TextFormField(
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.transparent),   
                      ),  
                      focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                   ),  
                      hintText: 'Email or Username',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ) 
                )
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child:  SizedBox( 
                width: MediaQuery.of(context).size.width * 0.80,
                height: 50.0,
                child: WideRoundedButton(
                  child: TextFormField(
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.transparent),   
                      ),  
                      focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                   ),  
                      hintText: 'Password',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ) 
                )
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
              child:  SizedBox( 
                width: MediaQuery.of(context).size.width * 0.80,
                height: 50.0,
                child: TextButton(
                  onPressed: () {}, 
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(1, 98, 129, 1), 
                    shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    side: BorderSide(color: Colors.white, width: 0.5))
                  ),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 19
                    )
                  )
                ),
              ),
            ),
            
            GestureDetector(child: const Text("Forgot Password?", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
          
          ],
        ),
      )
    ),
       Center(
        heightFactor: 3,
        child:Align(
        alignment: Alignment.bottomCenter,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                const Text("Need an account? ", textAlign: TextAlign.center,),
                GestureDetector(child: const Text("Create Account?", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
            ])
            ))
  ]
    )
      )
    );
  }
}