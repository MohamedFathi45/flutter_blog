
import 'package:flutterblog/stdlib/config/configs.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I();


void setUpLocator(){
    locator.registerLazySingleton<Config>(()=>DevConfig());
}