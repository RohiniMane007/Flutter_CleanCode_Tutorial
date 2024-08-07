import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../exceptions/app_exception.dart';
import 'base_api_service.dart';

class NetworkServicesApi implements BaseApiService{
 

  @override
  Future<dynamic> getApi(String url) async{
    dynamic jsonResponse;
    try{

      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);

    }on SocketException {
      throw NoInternetException('');
    }on TimeoutException{
      throw FetchDateException('timeout try again');
    }
    return jsonResponse;
  }

  @override
  Future postApi(String url, data) async{
    dynamic jsonResponse;
    try{

      final response = await http.post(Uri.parse(url),body: data).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);

    }on SocketException {
      throw NoInternetException('');
    }on TimeoutException{
      throw FetchDateException('timeout try again');
    }
    return jsonResponse;
  }

   @override
  Future<dynamic> deleteApi(String url) async{
    dynamic jsonResponse;
    try{

      final response = await http.delete(Uri.parse(url)).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);

    }on SocketException {
      throw NoInternetException('');
    }on TimeoutException{
      throw FetchDateException('timeout try again');
    }
    return jsonResponse;
  }

  dynamic returnResponse (http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 401:
        throw UnauthorisedException();
      case 500:
        throw FetchDateException('error communicating with server${response.statusCode}');
      default:
        throw UnauthorisedException();
    }
  }
  
  @override
  Future updateApi(String url, data) async{
     dynamic jsonResponse;
    try{

      final response = await http.put(Uri.parse(url),body: data).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);

    }on SocketException {
      throw NoInternetException('');
    }on TimeoutException{
      throw FetchDateException('timeout try again');
    }
    return jsonResponse;
  }
}