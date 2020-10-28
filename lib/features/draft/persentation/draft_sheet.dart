
import 'package:flutter/material.dart';

class DraftSheet extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0 , vertical: 40.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 2 , spreadRadius: 2 , color: Colors.grey),
            ]
          ),
          height: 200,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "h"
            ),
          ),
        ),
      ),
    );
  }

}