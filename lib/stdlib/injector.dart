
import 'package:flutterblog/stdlib/config/configs.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I();


void setUpLocator({bool production = false}){
    if(production)
        locator.registerLazySingleton<Config>(() => ProdConfig());
    else
        locator.registerLazySingleton<Config>(() => DevConfig());
}