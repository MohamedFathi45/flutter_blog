import 'package:flutter/material.dart';
import 'package:flutterblog/stdlib/ui/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
                stops: [0.1, 1.0],
                colors: [Color(0xffFFAFBD), Color(0xffffc3a0)]
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: const Offset(3, 4),
                        spreadRadius: 3,
                        blurRadius: 3)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(16.0))
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(
                          "Log in",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      _buildField("Email", context,secure: false ,icon:Icons.email),
                      _buildField("password", context ,secure: true , icon: Icons.lock),
                      MaterialButton(
                        color: Theme.of(context).primaryColor,
                        onPressed: (){},
                        child: Text(
                          "Log in".toUpperCase(),
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }

  Widget _buildField(String text , BuildContext context ,{bool secure = false , IconData icon}){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
      child: TextField(
        obscureText: secure,
          cursorColor: Theme.of(context).cursorColor,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            hintText: text,
          )
        ),
      );
  }
}
