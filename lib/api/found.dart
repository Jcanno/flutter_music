import 'package:dio/dio.dart';
import '../utils/request.dart';

Future<Response> getBanners(queryParameters) {
  const url = 'banner';
  const method = 'get';
  return request(url, method, queryParameters: queryParameters);
}