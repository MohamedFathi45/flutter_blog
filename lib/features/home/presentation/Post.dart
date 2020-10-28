

import 'package:flutter/material.dart';

class Post extends StatelessWidget{
  String title;
  String body;
  String date;

  Post({this.title , this.body , this.date});


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline5,
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  body,
                  textAlign: TextAlign.left,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                date,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.caption,),
            ],
          ),
        ),
      ),
    );
  }

}