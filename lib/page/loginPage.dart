import 'package:flutter/material.dart';
import 'package:astra/back_widget/login_stack.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          child: Container(
              decoration: BoxDecoration(
                image:DecorationImage(
                    image: AssetImage('assets/background.jpeg'),
                    fit:BoxFit.fill
                ),
              ),
              child:LoginStack()
          ),
        )
    );
  }
}

