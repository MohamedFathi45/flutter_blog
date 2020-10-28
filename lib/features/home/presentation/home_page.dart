

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterblog/stdlib/ui/main_scaffold.dart';

import 'Post.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Scrollbar(child: ListView(children: _mockPosts(),))
    );
  }

  List<Widget> _mockPosts(){
    List<Widget> mockPoasts = List<Widget>();
    for( int i = 0 ; i <10 ; i ++ ) {
      mockPoasts.add(Post(title: "Dart is awsome you can make greate apps",
          body: "dergasfdagafdgsdfwerwerwadsczxcxcsadqweqrgghhjtytrtytrtgfdgdzvsdsadsdqwqweqddsgsdszxcxvbsdrqfqvssdf",
          date: "Today"));
    }
    return mockPoasts;
  }
}
