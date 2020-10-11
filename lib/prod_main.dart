import 'package:flutter/cupertino.dart';
import 'package:flutterblog/stdlib/injector.dart';

import 'main.dart';

void main() {
  setUpLocator(production: true);
  runApp(MyApp());
}