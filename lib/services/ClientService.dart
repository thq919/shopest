import 'package:dio/dio.dart';
import 'dart:async';

class ClientService {
  Dio dio = Dio(BaseOptions(headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'}));

  Future<Response<dynamic>> getFacePageGallery() async {
    Response<dynamic> response;

    response = await dio.get('https://shopapi-0575.restdb.io/rest/home');

    return response;
  }
}
