
import 'package:flutterblog/stdlib/config/configs.dart';
import 'package:flutterblog/stdlib/models/user.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I();


void setUpLocator({bool production = false}){
    if(production)
        locator.registerLazySingleton<Config>(() => ProdConfig());
    else
        locator.registerLazySingleton<Config>(() => DevConfig());
    locator.registerSingleton<User>( User.empty() );
}