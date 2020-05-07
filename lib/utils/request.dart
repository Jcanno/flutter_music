import 'package:dio/dio.dart';
import '../config.dart';

final BaseOptions options = BaseOptions(
  connectTimeout: 15000,
  receiveTimeout: 15000,
  responseType: ResponseType.json,
  contentType: 'x-www-form-urlencoded',
  validateStatus: (status){
    // 不使用http状态码判断状态，使用AdapterInterceptor来处理（适用于标准REST风格）
    return true;
  },
  baseUrl: baseUrl,
);

Future<Response> request(url, method, {data, queryParameters, Map<String, dynamic> headers }) async{
  try {
    Dio dio = getDio();
    Response response = await dio.request(
      url,
      options: Options(method: method, headers: headers),
      data: data,
      queryParameters: queryParameters
    );
    return response;
  } catch (e) {
    print(e);
    return e;
  }
}


Dio getDio() {
  return Dio(options);
}


// class Request {

//   // static final Request _singleton = Request._internal();
//   // static Dio _dio;

//   final BaseOptions options = BaseOptions(
//       connectTimeout: 15000,
//       receiveTimeout: 15000,
//       responseType: ResponseType.json,
//       contentType: 'x-www-form-urlencoded',
//       validateStatus: (status){
//         // 不使用http状态码判断状态，使用AdapterInterceptor来处理（适用于标准REST风格）
//         return true;
//       },
//       baseUrl: baseUrl,
//   );

//   Future<Response> getCategory() async{
//     try {
//       Dio dio = Request().getDio();
//       Response response = await dio.post('wxmini/getCategory');
//       return response;
//     } catch (e) {
//       print(e);
//       return e;
//     }
//   }

//   Dio Init() {
//     return Dio(options);
//   }


//   getDio() {
//     return Dio(options);
//   }
// }