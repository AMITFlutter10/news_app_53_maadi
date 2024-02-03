import 'package:dio/dio.dart';
import 'const.dart';

class DioHelper {
  static late Dio dio;
  ////  https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=935fd7ff5d5d47b9b01be1f7c0b9ba00
  static init() {
    dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        receiveDataWhenStatusError: true));
  }
  // method
 static getData(
      {required String url,
      Map<String, dynamic>? query,
      Map<String, dynamic>? data,
      String? token}) async {
    try {
      dio.options.headers = {"Authorization": "Bearer ${token ?? ''}"};
      Response response =
          await dio.get(url, data: data, queryParameters: query);
      print(response.data);
      print(response.statusCode);
      return response;
    } catch (error) {
      print(error);
    }
  }


  static postData({required String url ,required Map<String,dynamic>data ,
    Map<String,dynamic>? query,
  String? token,
  })async{
    try {
      dio.options.headers = {
        "Authorization": "Bearer ${token ?? ''}"
      };
      Response response = await dio.post(
          url, data: data, queryParameters: query);
      print(response.data);
      print(response.statusCode);
      return response;
    }catch(error){
      print(error);
    }

  }
  deleteData({required String url,required Map<String,dynamic> data ,String? token,Map<String,dynamic>? query })async{
    try {
      dio.options.headers = {
        "Authorization": "Bearer ${token ?? ''}"
      };
    Response response =await dio.delete(url , data:data , queryParameters: query);
    return response;
  }catch (error){
      print(error);
    }
    }



}

