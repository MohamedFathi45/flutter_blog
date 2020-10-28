
import 'package:flutterblog/stdlib/config/configs.dart';
import 'package:flutterblog/stdlib/models/user.dart';
import 'package:get_it/get_it.dart';



final sl = GetIt.instance;

void setUpLocator({bool production = false}){

    if(production) {
        sl.registerLazySingleton<Config>(() => ProdConfig());
    }
    else {
        sl.registerLazySingleton<Config>(() => DevConfig());
    }
    sl.registerSingleton<User>( User.empty() );
}