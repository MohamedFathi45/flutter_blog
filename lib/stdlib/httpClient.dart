
import 'dart:io';

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutterblog/stdlib/config/config.dart';
import 'package:flutterblog/stdlib/errors/failurs.dart';
import 'package:flutterblog/stdlib/injector.dart';

Dio _dio = Dio();
final Config _config = locator<Config>();


Future<Response> makeKeylessRequest(String endpoint , {Map<String,dynamic>params}) async{
  final String url = _createURL(endpoint);
  final Response response = await _dio.post(url,
  data: params,
  options: Options(contentType: 'text/xml'));

  return response;
}

String _createURL(String endpoint){
  String url = endpoint;
  if(url.startsWith("/") && url.length > 1) url = url.substring(1);
  if(!url.endsWith("/")) url ="$url/";
  return "http://${_config.restBaseUrl}$url";
}

Future<Failure> basicDioErrorHandler(DioError e) async{
  if (e.error is SocketException){
    return Failure(message: "Couldn't connect to our servers. Please try again soon.");
  } else if (e.response == null){
    if (!await _isConnected()){
      return Failure(message: "Couldn't connect to internet.");
    } else {
      return Failure(message: "Couldn't make connection.");
    }
  }
  return Failure(message: "", resolved: false);
}

Future<bool> _isConnected() async{
  final DataConnectionChecker connectionChecker = DataConnectionChecker();
  final bool connectivityResult = await connectionChecker.hasConnection;
  if(connectivityResult){
    return true;
  }
  return false;
}